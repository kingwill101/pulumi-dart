// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesLocalStandbyDb {
  /// The date and time the Autonomous Data Guard role was switched for the
  /// standby Autonomous Database.
  final String? dataGuardRoleChangedTime;

  /// The date and time the Disaster Recovery role was switched for the standby
  /// Autonomous Database.
  final String? disasterRecoveryRoleChangedTime;

  /// The amount of time, in seconds, that the data of the standby database lags
  /// in comparison to the data of the primary database.
  final String? lagTimeDuration;

  /// The additional details about the current lifecycle state of the
  /// Autonomous Database.
  final String? lifecycleDetails;

  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// STOPPING
  /// STOPPED
  /// STARTING
  /// TERMINATING
  /// TERMINATED
  /// UNAVAILABLE
  /// RESTORE_IN_PROGRESS
  /// RESTORE_FAILED
  /// BACKUP_IN_PROGRESS
  /// SCALE_IN_PROGRESS
  /// AVAILABLE_NEEDS_ATTENTION
  /// UPDATING
  /// MAINTENANCE_IN_PROGRESS
  /// RESTARTING
  /// RECREATING
  /// ROLE_CHANGE_IN_PROGRESS
  /// UPGRADING
  /// INACCESSIBLE
  /// STANDBY
  final String? state;

  /// Creates a new [AutonomousDatabasePropertiesLocalStandbyDb].
  /// [dataGuardRoleChangedTime] The date and time the Autonomous Data Guard role was switched for the
  /// [disasterRecoveryRoleChangedTime] The date and time the Disaster Recovery role was switched for the standby
  /// [lagTimeDuration] The amount of time, in seconds, that the data of the standby database lags
  /// [lifecycleDetails] The additional details about the current lifecycle state of the
  /// [state] Possible values:
  AutonomousDatabasePropertiesLocalStandbyDb({
    this.dataGuardRoleChangedTime,
    this.disasterRecoveryRoleChangedTime,
    this.lagTimeDuration,
    this.lifecycleDetails,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataGuardRoleChangedTimeValue = dataGuardRoleChangedTime;
    if (dataGuardRoleChangedTimeValue != null) {
      map['dataGuardRoleChangedTime'] = dataGuardRoleChangedTimeValue;
    }
    final disasterRecoveryRoleChangedTimeValue =
        disasterRecoveryRoleChangedTime;
    if (disasterRecoveryRoleChangedTimeValue != null) {
      map['disasterRecoveryRoleChangedTime'] =
          disasterRecoveryRoleChangedTimeValue;
    }
    final lagTimeDurationValue = lagTimeDuration;
    if (lagTimeDurationValue != null) {
      map['lagTimeDuration'] = lagTimeDurationValue;
    }
    final lifecycleDetailsValue = lifecycleDetails;
    if (lifecycleDetailsValue != null) {
      map['lifecycleDetails'] = lifecycleDetailsValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory AutonomousDatabasePropertiesLocalStandbyDb.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesLocalStandbyDb(
      dataGuardRoleChangedTime: map['dataGuardRoleChangedTime'] == null
          ? null
          : map['dataGuardRoleChangedTime'] as String,
      disasterRecoveryRoleChangedTime:
          map['disasterRecoveryRoleChangedTime'] == null
              ? null
              : map['disasterRecoveryRoleChangedTime'] as String,
      lagTimeDuration: map['lagTimeDuration'] == null
          ? null
          : map['lagTimeDuration'] as String,
      lifecycleDetails: map['lifecycleDetails'] == null
          ? null
          : map['lifecycleDetails'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
