// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final int? idleTimeoutInMinutes;

  /// Indicates whether idle shutdown is activated for the application type. Valid values are `ENABLED` and `DISABLED`.
  final String? lifecycleManagement;

  /// The maximum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final int? maxIdleTimeoutInMinutes;

  /// The minimum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final int? minIdleTimeoutInMinutes;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings].
  /// [idleTimeoutInMinutes] The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  /// [lifecycleManagement] Indicates whether idle shutdown is activated for the application type. Valid values are `ENABLED` and `DISABLED`.
  /// [maxIdleTimeoutInMinutes] The maximum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  /// [minIdleTimeoutInMinutes] The minimum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutInMinutesValue = idleTimeoutInMinutes;
    if (idleTimeoutInMinutesValue != null) {
      map['idleTimeoutInMinutes'] = idleTimeoutInMinutesValue;
    }
    final lifecycleManagementValue = lifecycleManagement;
    if (lifecycleManagementValue != null) {
      map['lifecycleManagement'] = lifecycleManagementValue;
    }
    final maxIdleTimeoutInMinutesValue = maxIdleTimeoutInMinutes;
    if (maxIdleTimeoutInMinutesValue != null) {
      map['maxIdleTimeoutInMinutes'] = maxIdleTimeoutInMinutesValue;
    }
    final minIdleTimeoutInMinutesValue = minIdleTimeoutInMinutes;
    if (minIdleTimeoutInMinutesValue != null) {
      map['minIdleTimeoutInMinutes'] = minIdleTimeoutInMinutesValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null
          ? null
          : map['idleTimeoutInMinutes'] as int,
      lifecycleManagement: map['lifecycleManagement'] == null
          ? null
          : map['lifecycleManagement'] as String,
      maxIdleTimeoutInMinutes: map['maxIdleTimeoutInMinutes'] == null
          ? null
          : map['maxIdleTimeoutInMinutes'] as int,
      minIdleTimeoutInMinutes: map['minIdleTimeoutInMinutes'] == null
          ? null
          : map['minIdleTimeoutInMinutes'] as int,
    );
  }
}
