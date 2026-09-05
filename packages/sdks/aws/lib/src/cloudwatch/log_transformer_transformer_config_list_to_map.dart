// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigListToMap {
  /// Specifies whether the list will be flattened into single items. Defaults to `false`.
  final pulumi.Input<bool?>? flatten;
  /// Required if `flatten` is set to true. Specifies the element to keep. Allowed values are `first` and `last`.
  final pulumi.Input<String?>? flattenedElement;
  /// Specifies the key of the field to be extracted as keys in the generated map.
  final pulumi.Input<String> key;
  /// Specifies the key in the log event that has a list of objects that will be converted to a map.
  final pulumi.Input<String> source;
  /// Specifies the key of the field that will hold the generated map.
  final pulumi.Input<String?>? target;
  /// Specifies the values that will be extracted from the source objects and put into the values of the generated map. If omitted, original objects in the source list will be put into the values of the generated map.
  final pulumi.Input<String?>? valueKey;

  /// Creates a new [LogTransformerTransformerConfigListToMap].
  /// [flatten] Specifies whether the list will be flattened into single items. Defaults to `false`.
  /// [flattenedElement] Required if `flatten` is set to true. Specifies the element to keep. Allowed values are `first` and `last`.
  /// [key] Specifies the key of the field to be extracted as keys in the generated map.
  /// [source] Specifies the key in the log event that has a list of objects that will be converted to a map.
  /// [target] Specifies the key of the field that will hold the generated map.
  /// [valueKey] Specifies the values that will be extracted from the source objects and put into the values of the generated map. If omitted, original objects in the source list will be put into the values of the generated map.
  const LogTransformerTransformerConfigListToMap({
    this.flatten,
    this.flattenedElement,
    required this.key,
    required this.source,
    this.target,
    this.valueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flatten': ?flatten,
      'flattenedElement': ?flattenedElement,
      'key': key,
      'source': source,
      'target': ?target,
      'valueKey': ?valueKey,
    };
  }

  factory LogTransformerTransformerConfigListToMap.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigListToMap(
      flatten: (() { final guardedValue = map['flatten']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flattenedElement: (() { final guardedValue = map['flattenedElement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueKey: (() { final guardedValue = map['valueKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
