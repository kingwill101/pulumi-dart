// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class MetaV1LabelSelectorRequirement {
  /// key is the label key that the selector applies to.
  final pulumi.Input<String> key;
  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  final pulumi.Input<String> operator;
  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [MetaV1LabelSelectorRequirement].
  /// [key] key is the label key that the selector applies to.
  /// [operator] operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  /// [values] values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  const MetaV1LabelSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': ?values,
    };
  }

  factory MetaV1LabelSelectorRequirement.fromMap(Map<String, dynamic> map) {
    return MetaV1LabelSelectorRequirement(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
