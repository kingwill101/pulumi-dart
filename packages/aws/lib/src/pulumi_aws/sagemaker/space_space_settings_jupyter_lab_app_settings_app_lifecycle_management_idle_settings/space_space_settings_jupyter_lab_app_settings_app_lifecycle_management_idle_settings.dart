// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and <span pulumi-lang-nodejs="`525600`" pulumi-lang-dotnet="`525600`" pulumi-lang-go="`525600`" pulumi-lang-python="`525600`" pulumi-lang-yaml="`525600`" pulumi-lang-java="`525600`">`525600`</span>.
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
