// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationPolicyConfiguration {
  /// The ID of the action policy used.If the alert policy is in advanced mode and the selected alert policy is not configured with a dynamic action policy, set the actionPolicyId to an empty string.
  final String actionPolicyId;
  /// Alarm policy ID.If it is in simple mode or normal mode, set it to sls.builtin.dynamic (dynamic alarm policy built into the system).For advanced mode, set it to the specified alarm policy ID.
  final String alertPolicyId;
  /// Repeat the waiting time. For example, 5m, 1H, etc.
  final String repeatInterval;

  /// Creates a new [GetAlertsAlertConfigurationPolicyConfiguration].
  /// [actionPolicyId] The ID of the action policy used.If the alert policy is in advanced mode and the selected alert policy is not configured with a dynamic action policy, set the actionPolicyId to an empty string.
  /// [alertPolicyId] Alarm policy ID.If it is in simple mode or normal mode, set it to sls.builtin.dynamic (dynamic alarm policy built into the system).For advanced mode, set it to the specified alarm policy ID.
  /// [repeatInterval] Repeat the waiting time. For example, 5m, 1H, etc.
  GetAlertsAlertConfigurationPolicyConfiguration({
    required this.actionPolicyId,
    required this.alertPolicyId,
    required this.repeatInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPolicyId': actionPolicyId,
      'alertPolicyId': alertPolicyId,
      'repeatInterval': repeatInterval,
    };
  }

  factory GetAlertsAlertConfigurationPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationPolicyConfiguration(
      actionPolicyId: map['actionPolicyId'] as String,
      alertPolicyId: map['alertPolicyId'] as String,
      repeatInterval: map['repeatInterval'] as String,
    );
  }
}

