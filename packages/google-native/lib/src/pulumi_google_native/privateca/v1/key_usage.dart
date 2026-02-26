// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'extended_key_usage_options.dart';
import 'key_usage_options.dart';
import 'object_id.dart';

/// A KeyUsage describes key usage values that may appear in an X.509 certificate.
class KeyUsage {
  /// Describes high-level ways in which a key may be used.
  final KeyUsageOptions? baseKeyUsage;

  /// Detailed scenarios in which a key may be used.
  final ExtendedKeyUsageOptions? extendedKeyUsage;

  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  final List<ObjectId>? unknownExtendedKeyUsages;

  KeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseKeyUsageValue = baseKeyUsage;
    if (baseKeyUsageValue != null) {
      map['baseKeyUsage'] = baseKeyUsageValue.toMap();
    }
    final extendedKeyUsageValue = extendedKeyUsage;
    if (extendedKeyUsageValue != null) {
      map['extendedKeyUsage'] = extendedKeyUsageValue.toMap();
    }
    final unknownExtendedKeyUsagesValue = unknownExtendedKeyUsages;
    if (unknownExtendedKeyUsagesValue != null) {
      map['unknownExtendedKeyUsages'] =
          Input.encodeList<ObjectId, Map<String, dynamic>>(
              unknownExtendedKeyUsagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyUsage.fromMap(Map<String, dynamic> map) {
    return KeyUsage(
      baseKeyUsage: map['baseKeyUsage'] == null
          ? null
          : KeyUsageOptions.fromMap(
              (map['baseKeyUsage'] as Map).cast<String, dynamic>()),
      extendedKeyUsage: map['extendedKeyUsage'] == null
          ? null
          : ExtendedKeyUsageOptions.fromMap(
              (map['extendedKeyUsage'] as Map).cast<String, dynamic>()),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null
          ? null
          : Input.decodeList<ObjectId>(
              map['unknownExtendedKeyUsages'],
              (value) =>
                  ObjectId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
