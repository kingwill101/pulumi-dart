// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction {
  final pulumi.Input<String> eventAction;
  /// Whether to send a notification.
  final pulumi.Input<bool> notify;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction].
  /// [eventAction] Required.
  /// [notify] Whether to send a notification.
  RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction({
    required this.eventAction,
    required this.notify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventAction': eventAction,
      'notify': notify,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction(
      eventAction: (map['eventAction'] as String).input(),
      notify: (map['notify'] as bool).input(),
    );
  }
}

