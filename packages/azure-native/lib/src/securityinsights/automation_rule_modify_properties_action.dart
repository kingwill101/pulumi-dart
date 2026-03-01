// ignore_for_file: unused_element, unnecessary_cast

import 'incident_properties_action.dart';

/// Describes an automation rule action to modify an object's properties
class AutomationRuleModifyPropertiesAction {
  final IncidentPropertiesAction? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'ModifyProperties'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleModifyPropertiesAction].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleModifyPropertiesAction({
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

  factory AutomationRuleModifyPropertiesAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleModifyPropertiesAction(
      actionConfiguration: map['actionConfiguration'] == null ? null : IncidentPropertiesAction.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

