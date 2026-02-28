// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupAlarmConfiguration {
  /// A list of alarms configured for the deployment group.
  final List<String>? alarms;

  /// Indicates whether the alarm configuration is enabled. This option is useful when you want to temporarily deactivate alarm monitoring for a deployment group without having to add the same alarms again later.
  final bool? enabled;

  /// Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is `false`.
  final bool? ignorePollAlarmFailure;

  /// Creates a new [DeploymentGroupAlarmConfiguration].
  /// [alarms] A list of alarms configured for the deployment group.
  /// [enabled] Indicates whether the alarm configuration is enabled. This option is useful when you want to temporarily deactivate alarm monitoring for a deployment group without having to add the same alarms again later.
  /// [ignorePollAlarmFailure] Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is `false`.
  DeploymentGroupAlarmConfiguration({
    this.alarms,
    this.enabled,
    this.ignorePollAlarmFailure,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = alarmsValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final ignorePollAlarmFailureValue = ignorePollAlarmFailure;
    if (ignorePollAlarmFailureValue != null) {
      map['ignorePollAlarmFailure'] = ignorePollAlarmFailureValue;
    }
    return map;
  }

  factory DeploymentGroupAlarmConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupAlarmConfiguration(
      alarms:
          map['alarms'] == null ? null : (map['alarms'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      ignorePollAlarmFailure: map['ignorePollAlarmFailure'] == null
          ? null
          : map['ignorePollAlarmFailure'] as bool,
    );
  }
}
