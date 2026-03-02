// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Indicates whether idle shutdown is activated for the application type. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? lifecycleManagement;
  /// The maximum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? maxIdleTimeoutInMinutes;
  /// The minimum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? minIdleTimeoutInMinutes;

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
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'lifecycleManagement': ?lifecycleManagement,
      'maxIdleTimeoutInMinutes': ?maxIdleTimeoutInMinutes,
      'minIdleTimeoutInMinutes': ?minIdleTimeoutInMinutes,
    };
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : ((map['idleTimeoutInMinutes'] as int).input()).input(),
      lifecycleManagement: map['lifecycleManagement'] == null ? null : ((map['lifecycleManagement'] as String).input()).input(),
      maxIdleTimeoutInMinutes: map['maxIdleTimeoutInMinutes'] == null ? null : ((map['maxIdleTimeoutInMinutes'] as int).input()).input(),
      minIdleTimeoutInMinutes: map['minIdleTimeoutInMinutes'] == null ? null : ((map['minIdleTimeoutInMinutes'] as int).input()).input(),
    );
  }
}

