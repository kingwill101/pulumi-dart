// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class LabelSelectorRequirementResponse {
  /// key is the label key that the selector applies to.
  final pulumi.Input<String>? key;
  /// operator represents a key's relationship to a set of values. Valid operators are In and NotIn
  final pulumi.Input<String>? operator;
  /// values is an array of string values, the values array must be non-empty.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [LabelSelectorRequirementResponse].
  /// [key] key is the label key that the selector applies to.
  /// [operator] operator represents a key's relationship to a set of values. Valid operators are In and NotIn
  /// [values] values is an array of string values, the values array must be non-empty.
  LabelSelectorRequirementResponse({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory LabelSelectorRequirementResponse.fromMap(Map<String, dynamic> map) {
    return LabelSelectorRequirementResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

