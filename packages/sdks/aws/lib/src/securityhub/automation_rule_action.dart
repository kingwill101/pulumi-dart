// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action_finding_fields_update.dart';

class AutomationRuleAction {
  /// A block that specifies that the automation rule action is an update to a finding field.  Documented below.
  final pulumi.Input<AutomationRuleActionFindingFieldsUpdate>? findingFieldsUpdate;
  /// Specifies that the rule action should update the `Types` finding field. The `Types` finding field classifies findings in the format of namespace/category/classifier.
  final pulumi.Input<String>? type;

  /// Creates a new [AutomationRuleAction].
  /// [findingFieldsUpdate] A block that specifies that the automation rule action is an update to a finding field.  Documented below.
  /// [type] Specifies that the rule action should update the `Types` finding field. The `Types` finding field classifies findings in the format of namespace/category/classifier.
  const AutomationRuleAction({
    this.findingFieldsUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingFieldsUpdate': ?pulumi.Input.mapOptionalInputValue<AutomationRuleActionFindingFieldsUpdate, Map<String, dynamic>>(findingFieldsUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AutomationRuleAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAction(
      findingFieldsUpdate: (() { final guardedValue = map['findingFieldsUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleActionFindingFieldsUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

