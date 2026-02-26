// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasePropertyLocalStandbyDb {
  /// The date and time the Autonomous Data Guard role was switched for the
  /// standby Autonomous Database.
  final String dataGuardRoleChangedTime;

  /// The date and time the Disaster Recovery role was switched for the standby
  /// Autonomous Database.
  final String disasterRecoveryRoleChangedTime;

  /// The amount of time, in seconds, that the data of the standby database lags
  /// in comparison to the data of the primary database.
  final String lagTimeDuration;

  /// The additional details about the current lifecycle state of the
  /// Autonomous Database.
  final String lifecycleDetails;

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
  final String state;

  GetAutonomousDatabasePropertyLocalStandbyDb({
    required this.dataGuardRoleChangedTime,
    required this.disasterRecoveryRoleChangedTime,
    required this.lagTimeDuration,
    required this.lifecycleDetails,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataGuardRoleChangedTime'] = dataGuardRoleChangedTime;
    map['disasterRecoveryRoleChangedTime'] = disasterRecoveryRoleChangedTime;
    map['lagTimeDuration'] = lagTimeDuration;
    map['lifecycleDetails'] = lifecycleDetails;
    map['state'] = state;
    return map;
  }

  factory GetAutonomousDatabasePropertyLocalStandbyDb.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyLocalStandbyDb(
      dataGuardRoleChangedTime: map['dataGuardRoleChangedTime'] as String,
      disasterRecoveryRoleChangedTime:
          map['disasterRecoveryRoleChangedTime'] as String,
      lagTimeDuration: map['lagTimeDuration'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      state: map['state'] as String,
    );
  }
}
