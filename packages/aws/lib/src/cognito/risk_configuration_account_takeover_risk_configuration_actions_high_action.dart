// ignore_for_file: unused_element, unnecessary_cast


class RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction {
  final String eventAction;
  /// Whether to send a notification.
  final bool notify;

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
      eventAction: map['eventAction'] as String,
      notify: map['notify'] as bool,
    );
  }
}

