// ignore_for_file: unused_element, unnecessary_cast

class RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction {
  final String eventAction;

  /// Whether to send a notification.
  final bool notify;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction].
  /// [eventAction] Required.
  /// [notify] Whether to send a notification.
  RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction({
    required this.eventAction,
    required this.notify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventAction'] = eventAction;
    map['notify'] = notify;
    return map;
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction(
      eventAction: map['eventAction'] as String,
      notify: map['notify'] as bool,
    );
  }
}
