// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction {
  final pulumi.Input<String> eventAction;
  /// Whether to send a notification.
  final pulumi.Input<bool> notify;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction].
  /// [eventAction] Required.
  /// [notify] Whether to send a notification.
  const RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction({
    required this.eventAction,
    required this.notify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventAction': eventAction,
      'notify': notify,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction(
      eventAction: pulumi.Input.fromValue(map['eventAction'] as String),
      notify: pulumi.Input.fromValue(map['notify'] as bool),
    );
  }
}

