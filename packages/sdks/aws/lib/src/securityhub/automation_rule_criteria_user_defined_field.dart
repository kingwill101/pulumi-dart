// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaUserDefinedField {
  final pulumi.Input<String> comparison;
  /// The key of the map filter.
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaUserDefinedField].
  /// [comparison] Required.
  /// [key] The key of the map filter.
  /// [value] Required.
  const AutomationRuleCriteriaUserDefinedField({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'key': key,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaUserDefinedField.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaUserDefinedField(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

