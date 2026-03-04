// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaAwsAccountId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaAwsAccountId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaAwsAccountId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaAwsAccountId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaAwsAccountId(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
