// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaRelatedFindingsId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaRelatedFindingsId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaRelatedFindingsId.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaRelatedFindingsId(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
