// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaWorkflowStatus {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaWorkflowStatus].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaWorkflowStatus.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaWorkflowStatus(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

