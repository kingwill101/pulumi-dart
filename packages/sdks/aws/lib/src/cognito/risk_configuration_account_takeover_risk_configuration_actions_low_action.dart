// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction {
  final pulumi.Input<String> eventAction;
  /// Whether to send a notification.
  final pulumi.Input<bool> notify;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction].
  /// [eventAction] Required.
  /// [notify] Whether to send a notification.
  const RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction({
    required this.eventAction,
    required this.notify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventAction': eventAction,
      'notify': notify,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction(
      eventAction: pulumi.Input.fromValue(map['eventAction'] as String),
      notify: pulumi.Input.fromValue(map['notify'] as bool),
    );
  }
}

