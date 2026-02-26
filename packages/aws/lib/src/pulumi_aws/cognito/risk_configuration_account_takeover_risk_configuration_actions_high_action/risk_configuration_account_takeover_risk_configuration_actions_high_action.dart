// ignore_for_file: unused_element, unnecessary_cast

class RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction {
  final String eventAction;

  /// Whether to send a notification.
  final bool notify;

  RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction({
    required this.eventAction,
    required this.notify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventAction'] = eventAction;
    map['notify'] = notify;
    return map;
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction(
      eventAction: map['eventAction'] as String,
      notify: map['notify'] as bool,
    );
  }
}
