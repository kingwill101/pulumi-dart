// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaRelatedFindingsProductArn {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaRelatedFindingsProductArn].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaRelatedFindingsProductArn.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaRelatedFindingsProductArn(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

