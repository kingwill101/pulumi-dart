// Required for Pulumi wire-format constants and runtime value classes.
// ignore_for_file: implementation_imports

import 'dart:collection';

import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/asset_archive.dart';
import 'package:pulumi/src/constants.dart';

/// A value marked as secret so remediation output preserves sensitivity.
class Secret {
  /// Creates a wrapper that marks [value] as secret.
  const Secret(this.value);

  /// The wrapped plaintext value.
  final Object? value;
}

/// Thrown when a policy reads a value that is unknown during preview.
class UnknownValueError implements Exception {
  /// Creates an unknown-value error for [sentinel] at [path].
  const UnknownValueError(this.sentinel, this.path);

  /// The Pulumi wire sentinel describing the unknown value's type.
  final String sentinel;

  /// Property path from the callback's root property map.
  final List<Object> path;

  String get _type => switch (sentinel) {
    Constants.unknownBoolValue => 'boolean',
    Constants.unknownNumberValue => 'number',
    Constants.unknownArrayValue => 'array',
    Constants.unknownAssetValue => 'asset',
    Constants.unknownArchiveValue => 'archive',
    Constants.unknownObjectValue => 'object',
    _ => 'string',
  };

  @override
  String toString() {
    final location = path.map((part) => '.$part').join();
    return 'UnknownValueError: $_type value at $location cannot be known during preview';
  }
}

/// Decodes analyzer properties into policy-friendly runtime values.
Map<String, Object?> decodePolicyProperties(
  Struct properties, {
  bool preserveSecrets = false,
}) {
  final decoded = <String, Object?>{
    for (final entry in properties.fields.entries)
      entry.key: _decodeValue(entry.value, preserveSecrets: preserveSecrets),
  };
  return _PolicyMap(decoded, const [], preserveSecrets: preserveSecrets);
}

Object? _decodeValue(Value value, {required bool preserveSecrets}) {
  return switch (value.whichKind()) {
    Value_Kind.nullValue => null,
    Value_Kind.boolValue => value.boolValue,
    Value_Kind.numberValue => value.numberValue,
    Value_Kind.stringValue => value.stringValue,
    Value_Kind.listValue =>
      value.listValue.values
          .map((item) => _decodeValue(item, preserveSecrets: preserveSecrets))
          .toList(),
    Value_Kind.structValue => _decodeStruct(
      value.structValue,
      preserveSecrets: preserveSecrets,
    ),
    Value_Kind.notSet => null,
  };
}

Object? _decodeStruct(Struct value, {required bool preserveSecrets}) {
  final signature = value.fields[Constants.specialSigKey]?.stringValue;
  if (signature == Constants.specialSecretSig) {
    final decoded = _decodeValue(
      value.fields[Constants.valueName] ?? Value(),
      preserveSecrets: preserveSecrets,
    );
    return preserveSecrets ? Secret(decoded) : decoded;
  }
  if (signature == Constants.specialAssetSig) {
    if (value.fields.containsKey(Constants.assetOrArchivePathName)) {
      return FileAsset(
        value.fields[Constants.assetOrArchivePathName]!.stringValue,
      );
    }
    if (value.fields.containsKey(Constants.assetTextName)) {
      return StringAsset(value.fields[Constants.assetTextName]!.stringValue);
    }
    if (value.fields.containsKey(Constants.assetOrArchiveUriName)) {
      return RemoteAsset(
        value.fields[Constants.assetOrArchiveUriName]!.stringValue,
      );
    }
    throw StateError('Invalid Pulumi asset in policy properties.');
  }
  if (signature == Constants.specialArchiveSig) {
    if (value.fields.containsKey(Constants.archiveAssetsName)) {
      final decoded = _decodeValue(
        value.fields[Constants.archiveAssetsName]!,
        preserveSecrets: preserveSecrets,
      );
      if (decoded is! Map) {
        throw StateError('Invalid Pulumi asset archive in policy properties.');
      }
      return AssetArchive(<String, AssetOrArchive>{
        for (final entry in decoded.entries)
          entry.key.toString(): entry.value as AssetOrArchive,
      });
    }
    if (value.fields.containsKey(Constants.assetOrArchivePathName)) {
      return FileArchive(
        value.fields[Constants.assetOrArchivePathName]!.stringValue,
      );
    }
    if (value.fields.containsKey(Constants.assetOrArchiveUriName)) {
      return RemoteArchive(
        value.fields[Constants.assetOrArchiveUriName]!.stringValue,
      );
    }
    throw StateError('Invalid Pulumi archive in policy properties.');
  }

  return <String, Object?>{
    for (final entry in value.fields.entries)
      entry.key: _decodeValue(entry.value, preserveSecrets: preserveSecrets),
  };
}

Object? _readPolicyValue(
  Object? value,
  List<Object> path, {
  required bool preserveSecrets,
}) {
  if (value is String && Constants.isUnknownSentinel(value)) {
    throw UnknownValueError(value, path);
  }
  if (value is Secret) {
    return _readPolicyValue(
      value.value,
      path,
      preserveSecrets: preserveSecrets,
    );
  }
  if (value is Map<String, Object?> && value is! _PolicyMap) {
    return _PolicyMap(value, path, preserveSecrets: preserveSecrets);
  }
  if (value is List<Object?> && value is! _PolicyList) {
    return _PolicyList(value, path, preserveSecrets: preserveSecrets);
  }
  return value;
}

class _PolicyMap extends MapBase<String, Object?> {
  _PolicyMap(this._values, this._path, {required this.preserveSecrets});

  final Map<String, Object?> _values;
  final List<Object> _path;
  final bool preserveSecrets;

  @override
  Object? operator [](Object? key) => _readPolicyValue(_values[key], [
    ..._path,
    key ?? 'null',
  ], preserveSecrets: preserveSecrets);

  @override
  void operator []=(String key, Object? value) {
    if (preserveSecrets && _values[key] is Secret && value is! Secret) {
      _values[key] = Secret(value);
    } else {
      _values[key] = value;
    }
  }

  @override
  void clear() => _values.clear();

  @override
  Iterable<String> get keys => _values.keys;

  @override
  Object? remove(Object? key) {
    final value = _values.remove(key);
    return _readPolicyValue(value, [
      ..._path,
      key ?? 'null',
    ], preserveSecrets: preserveSecrets);
  }
}

class _PolicyList extends ListBase<Object?> {
  _PolicyList(this._values, this._path, {required this.preserveSecrets});

  final List<Object?> _values;
  final List<Object> _path;
  final bool preserveSecrets;

  @override
  int get length => _values.length;

  @override
  set length(int value) => _values.length = value;

  @override
  Object? operator [](int index) => _readPolicyValue(_values[index], [
    ..._path,
    index,
  ], preserveSecrets: preserveSecrets);

  @override
  void operator []=(int index, Object? value) {
    if (preserveSecrets && _values[index] is Secret && value is! Secret) {
      _values[index] = Secret(value);
    } else {
      _values[index] = value;
    }
  }
}

/// Unwraps policy proxy collections while retaining secret wrappers.
Object? unwrapPolicyValue(Object? value) {
  if (value is _PolicyMap) {
    return <String, Object?>{
      for (final entry in value._values.entries)
        entry.key: unwrapPolicyValue(entry.value),
    };
  }
  if (value is _PolicyList) {
    return value._values.map(unwrapPolicyValue).toList(growable: false);
  }
  if (value is Map) {
    return value.map(
      (key, item) => MapEntry(key.toString(), unwrapPolicyValue(item)),
    );
  }
  if (value is Iterable) {
    return value.map(unwrapPolicyValue).toList(growable: false);
  }
  return value;
}

/// Prepares remediation output for another policy and restores secret markers
/// at paths that were secret in [source].
///
/// This preserves secrecy when a policy returns a copied map, for example
/// `{...args.props, 'enabled': true}`, rather than mutating and returning the
/// original policy map.
Map<String, Object?> prepareRemediationProperties(
  Map<String, Object?> value,
  Map<String, Object?> source,
) {
  final restored = _restorePolicySecrets(value, source);
  return _readPolicyValue(restored, const [], preserveSecrets: true)!
      as Map<String, Object?>;
}

Object? _restorePolicySecrets(Object? value, Object? source) {
  final rawValue = _rawPolicyValue(value);
  final rawSource = _rawPolicyValue(source);

  if (rawValue is Secret) {
    return Secret(
      _restorePolicySecrets(
        rawValue.value,
        rawSource is Secret ? rawSource.value : rawSource,
      ),
    );
  }
  if (rawSource is Secret) {
    return Secret(_restorePolicySecrets(rawValue, rawSource.value));
  }
  if (rawValue is Map && rawSource is Map) {
    return <String, Object?>{
      for (final entry in rawValue.entries)
        entry.key.toString(): _restorePolicySecrets(
          entry.value,
          rawSource[entry.key],
        ),
    };
  }
  if (rawValue is Iterable && rawSource is Iterable) {
    final sourceValues = rawSource.toList(growable: false);
    return <Object?>[
      for (final (index, item) in rawValue.indexed)
        _restorePolicySecrets(
          item,
          index < sourceValues.length ? sourceValues[index] : null,
        ),
    ];
  }
  return rawValue;
}

Object? _rawPolicyValue(Object? value) => switch (value) {
  _PolicyMap() => value._values,
  _PolicyList() => value._values,
  _ => value,
};
