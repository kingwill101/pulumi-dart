import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:characters/characters.dart';
import 'package:crypto/crypto.dart' as crypto;

import 'input.dart';
import 'input_args.dart';
import 'output.dart';
import 'resource/resource.dart';

/// {@template pulumi.output_helpers.output}
/// Converts an arbitrary value into an [Output].
///
/// This helper recursively resolves nested [Input], [Output], [Future], maps,
/// and lists.
/// {@endtemplate}
///
Output<dynamic> output(dynamic value) {
  return Output<dynamic>(_resolveOutputData(value));
}

/// {@template pulumi.output_helpers.secret}
/// Converts a value into a secret [Output].
///
/// Secret marking is applied to the final output regardless of whether the
/// original value was already secret.
/// {@endtemplate}
///
Output<T> secret<T>(Object? value) {
  if (value is Output<T>) {
    return Output.createSecret(value);
  }
  if (value is Output) {
    return Output.createSecret(value.apply<T>((resolved) => resolved as T));
  }
  return Output.createSecret(Input.asInput<T>(value).toOutput());
}

/// Marks an already typed input as secret without weakening its value type.
Input<T> secretInput<T>(Input<T> value) =>
    Input.fromOutput(Output.createSecret(value.toOutput()));

/// Removes the secret bit from an output.
Output<T> unsecret<T>(Output<T> value) => Output.unsecret(value);

/// Returns the number of user-perceived Unicode characters in [value].
///
/// PCL's `length` builtin counts grapheme clusters rather than UTF-16 code
/// units or Unicode scalar values.
int stringLength(String value) => value.characters.length;

/// Current program working directory as supplied by the language host.
String currentWorkingDirectory() =>
    Platform.environment['PULUMI_PWD'] ?? Directory.current.path;

/// Root directory containing the active Pulumi project.
String projectRootDirectory() =>
    Platform.environment['PULUMI_ROOT_DIRECTORY'] ?? currentWorkingDirectory();

/// Decodes a base64 string as UTF-8 text.
String fromBase64(String value) => utf8.decode(base64Decode(value));

/// UTF-8 encodes text as a base64 string.
String toBase64(String value) => base64Encode(utf8.encode(value));

/// Computes the lowercase SHA-1 digest of the UTF-8 encoded [value].
String sha1Hash(String value) =>
    crypto.sha1.convert(utf8.encode(value)).toString();

/// Reads a UTF-8 text file relative to the program working directory.
String readTextFile(String path) => File(path).readAsStringSync();

/// Reads a file and returns its bytes encoded as base64.
String fileBase64(String path) => base64Encode(File(path).readAsBytesSync());

/// Returns a file's SHA-256 digest encoded as base64.
String fileBase64Sha256(String path) =>
    base64Encode(crypto.sha256.convert(File(path).readAsBytesSync()).bytes);

/// Converts a map into PCL `{key, value}` entry objects.
List<Map<String, dynamic>> mapEntries(Map<dynamic, dynamic> value) => value
    .entries
    .map((entry) => <String, dynamic>{'key': entry.key, 'value': entry.value})
    .toList(growable: false);

/// Looks up [key], returning [fallback] only when the key is absent.
dynamic mapLookup(Map<dynamic, dynamic> value, dynamic key, dynamic fallback) =>
    value.containsKey(key) ? value[key] : fallback;

/// Indexes a PCL collection and throws when a map key is absent.
dynamic indexValue(dynamic value, dynamic key) {
  if (value is Map && !value.containsKey(key)) {
    throw StateError("key '$key' was not found");
  }
  return value[key];
}

/// Evaluates [value] and returns whether it completed without failure.
Output<bool> canValue(dynamic Function() value) {
  try {
    return output(
      value(),
    ).apply<bool>((_) => true).recover((_, _) => input(false));
  } catch (_) {
    return Output.create(false);
  }
}

/// Evaluates [value], returning [fallback] when evaluation fails.
Output<dynamic> tryValue(
  dynamic Function() value,
  dynamic Function() fallback,
) {
  try {
    return output(value()).recover((_, _) => input<dynamic>(fallback()));
  } catch (_) {
    return output(fallback());
  }
}

/// Returns the item at [index], wrapping the index to the list's length.
T listElement<T>(List<T> values, int index) {
  if (values.isEmpty) {
    throw StateError('element cannot select from an empty list');
  }
  return values[index % values.length];
}

/// Returns the only element in [values], `null` when empty, and throws when
/// more than one value is present.
T? singleOrNone<T>(List<T> values) {
  if (values.length > 1) {
    throw StateError(
      'singleOrNone expected input list to have at most one element',
    );
  }
  return values.firstOrNull;
}

/// Concatenates typed inputs after resolving their values.
///
/// Dependency and secret metadata from every part is preserved in the returned
/// output.
Output<String> concatInputs(Iterable<Input<Object?>> parts) {
  return Output.all(
    parts.map((part) => part.toOutput()),
  ).apply((values) => values.join());
}

/// JSON-encodes the resolved value of an output-like input.
Output<String> jsonStringify(dynamic value) {
  return output(value).apply((resolved) => jsonEncode(resolved));
}

/// JSON-decodes the resolved string value of an output-like input.
Output<dynamic> jsonParse(dynamic value) {
  return output(value).apply((resolved) => jsonDecode(resolved as String));
}

/// Resolves and JSON-encodes a value using runtime output semantics.
Future<String> runtimeToJson(dynamic value) async {
  final resolved = await _resolveOutputData(value);
  return jsonEncode(resolved.value);
}

/// Creates a deferred output and a resolver callback.
///
/// The returned resolver wires another output into the deferred output.
///
/// ## Example
/// ```dart
/// final (out, resolve) = deferredOutput<String>();
/// resolve(Output.create('ready'));
/// ```
(Output<T>, void Function(Output<T>)) deferredOutput<T>() {
  final completer = Completer<OutputData<T>>();
  final result = Output<T>(completer.future);

  void resolve(Output<T> source) {
    source.getData().then(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        }
      },
      onError: (error, stackTrace) {
        if (!completer.isCompleted) {
          completer.completeError(error, stackTrace);
        }
      },
    );
  }

  return (result, resolve);
}

Future<OutputData<dynamic>> _resolveOutputData(dynamic value) async {
  if (value is Output) {
    final outputData = await value.getData();
    if (!outputData.isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: outputData.isSecret,
        resources: outputData.resources,
      );
    }

    final nestedData = await _resolveOutputData(outputData.value);
    return OutputData<dynamic>(
      value: nestedData.value,
      isKnown: nestedData.isKnown,
      isSecret: outputData.isSecret || nestedData.isSecret,
      resources: {...outputData.resources, ...nestedData.resources},
    );
  }

  if (value is Input) {
    return _resolveOutputData(value.toOutput());
  }

  if (value is Future) {
    final resolved = await value;
    return _resolveOutputData(resolved);
  }

  if (value is InputArgs) {
    final dictionary = await value.toDictionary();
    return _resolveOutputData(dictionary);
  }

  if (value is Map) {
    final resources = <Resource>{};
    var isKnown = true;
    var isSecret = false;
    final result = <String, dynamic>{};

    for (final entry in value.entries) {
      final keyData = await _resolveOutputData(entry.key);
      final valueData = await _resolveOutputData(entry.value);

      isKnown = isKnown && keyData.isKnown && valueData.isKnown;
      isSecret = isSecret || keyData.isSecret || valueData.isSecret;
      resources.addAll(keyData.resources);
      resources.addAll(valueData.resources);

      if (keyData.isKnown && valueData.isKnown) {
        result[keyData.value.toString()] = valueData.value;
      }
    }

    if (!isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: resources,
      );
    }

    return OutputData<dynamic>(
      value: result,
      isKnown: true,
      isSecret: isSecret,
      resources: resources,
    );
  }

  if (value is Iterable) {
    final resources = <Resource>{};
    var isKnown = true;
    var isSecret = false;
    final result = <dynamic>[];

    for (final item in value) {
      final data = await _resolveOutputData(item);
      isKnown = isKnown && data.isKnown;
      isSecret = isSecret || data.isSecret;
      resources.addAll(data.resources);
      if (data.isKnown) {
        result.add(data.value);
      }
    }

    if (!isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: resources,
      );
    }

    return OutputData<dynamic>(
      value: result,
      isKnown: true,
      isSecret: isSecret,
      resources: resources,
    );
  }

  return OutputData<dynamic>(
    value: value,
    isKnown: true,
    isSecret: false,
    resources: const {},
  );
}
