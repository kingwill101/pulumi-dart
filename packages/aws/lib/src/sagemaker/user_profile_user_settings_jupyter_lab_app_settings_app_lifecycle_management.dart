// ignore_for_file: unused_element, unnecessary_cast

import 'user_profile_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
      idleSettings;

  /// Creates a new [UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleSettingsValue = idleSettings;
    if (idleSettingsValue != null) {
      map['idleSettings'] = idleSettingsValue.toMap();
    }
    return map;
  }

  factory UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings
              .fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
