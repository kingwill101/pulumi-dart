// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? idleTimeoutInMinutes;

  /// Indicates whether idle shutdown is activated for the application type. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? lifecycleManagement;

  /// The maximum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? maxIdleTimeoutInMinutes;

  /// The minimum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  final pulumi.Input<int>? minIdleTimeoutInMinutes;

  /// Creates a new [DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings].
  /// [idleTimeoutInMinutes] The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  /// [lifecycleManagement] Indicates whether idle shutdown is activated for the application type. Valid values are `ENABLED` and `DISABLED`.
  /// [maxIdleTimeoutInMinutes] The maximum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  /// [minIdleTimeoutInMinutes] The minimum value in minutes that custom idle shutdown can be set to by the user. Valid values are between `60` and `525600`.
  DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
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

  factory DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: (() {
        final guardedValue = map['idleTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      lifecycleManagement: (() {
        final guardedValue = map['lifecycleManagement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxIdleTimeoutInMinutes: (() {
        final guardedValue = map['maxIdleTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minIdleTimeoutInMinutes: (() {
        final guardedValue = map['minIdleTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
