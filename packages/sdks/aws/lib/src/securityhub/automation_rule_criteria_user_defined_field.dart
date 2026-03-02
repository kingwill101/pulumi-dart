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
  AutomationRuleCriteriaUserDefinedField({
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
      comparison: (map['comparison'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

