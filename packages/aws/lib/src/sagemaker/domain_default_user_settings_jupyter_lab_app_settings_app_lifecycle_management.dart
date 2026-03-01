// ignore_for_file: unused_element, unnecessary_cast

import 'domain_default_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?idleSettings == null ? null : idleSettings!.toMap(),
    };
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap(
              (map['idleSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
