// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_action_finding_fields_update.dart';

class AutomationRuleAction {
  /// A block that specifies that the automation rule action is an update to a finding field.  Documented below.
  final AutomationRuleActionFindingFieldsUpdate? findingFieldsUpdate;
  /// Specifies that the rule action should update the `Types` finding field. The `Types` finding field classifies findings in the format of namespace/category/classifier.
  final String? type;

  /// Creates a new [AutomationRuleAction].
  /// [findingFieldsUpdate] A block that specifies that the automation rule action is an update to a finding field.  Documented below.
  /// [type] Specifies that the rule action should update the `Types` finding field. The `Types` finding field classifies findings in the format of namespace/category/classifier.
  AutomationRuleAction({
    this.findingFieldsUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingFieldsUpdate': ?findingFieldsUpdate == null ? null : findingFieldsUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory AutomationRuleAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAction(
      findingFieldsUpdate: map['findingFieldsUpdate'] == null ? null : AutomationRuleActionFindingFieldsUpdate.fromMap((map['findingFieldsUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

