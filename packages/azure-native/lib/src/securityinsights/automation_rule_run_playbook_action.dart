// ignore_for_file: unused_element, unnecessary_cast

import 'playbook_action_properties.dart';

/// Describes an automation rule action to run a playbook
class AutomationRuleRunPlaybookAction {
  final PlaybookActionProperties? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'RunPlaybook'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleRunPlaybookAction].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleRunPlaybookAction({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?actionConfiguration == null ? null : actionConfiguration!.toMap(),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleRunPlaybookAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRunPlaybookAction(
      actionConfiguration: map['actionConfiguration'] == null ? null : PlaybookActionProperties.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

