// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idleSettings` Block below.
  final pulumi.Input<UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?>? idleSettings;

  /// Creates a new [UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idleSettings` Block below.
  const UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: (() { final guardedValue = map['idleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
