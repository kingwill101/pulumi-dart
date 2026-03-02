// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction {
  final pulumi.Input<String> eventAction;
  /// Whether to send a notification.
  final pulumi.Input<bool> notify;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction].
  /// [eventAction] Required.
  /// [notify] Whether to send a notification.
  RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction({
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
      eventAction: (map['eventAction'] as String).input(),
      notify: (map['notify'] as bool).input(),
    );
  }
}

