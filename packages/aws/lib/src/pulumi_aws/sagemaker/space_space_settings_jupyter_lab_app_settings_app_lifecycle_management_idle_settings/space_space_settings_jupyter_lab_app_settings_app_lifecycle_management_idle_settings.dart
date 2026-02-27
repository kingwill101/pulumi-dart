// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final int? idleTimeoutInMinutes;

  SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutInMinutesValue = idleTimeoutInMinutes;
    if (idleTimeoutInMinutesValue != null) {
      map['idleTimeoutInMinutes'] = idleTimeoutInMinutesValue;
    }
    return map;
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null
          ? null
          : map['idleTimeoutInMinutes'] as int,
    );
  }
}
