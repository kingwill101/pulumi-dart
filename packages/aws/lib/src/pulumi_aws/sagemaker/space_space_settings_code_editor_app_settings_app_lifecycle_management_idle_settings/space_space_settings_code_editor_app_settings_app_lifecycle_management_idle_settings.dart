// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final int? idleTimeoutInMinutes;

  SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
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

  factory SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null
          ? null
          : map['idleTimeoutInMinutes'] as int,
    );
  }
}
