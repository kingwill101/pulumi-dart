// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  /// The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  final pulumi.Input<int?>? idleTimeoutInMinutes;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings].
  /// [idleTimeoutInMinutes] The time that SageMaker AI waits after the application becomes idle before shutting it down. Valid values are between `60` and `525600`.
  const SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
    };
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings(
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
