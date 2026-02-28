// ignore_for_file: unused_element, unnecessary_cast

import 'domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings? idleSettings;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?idleSettings == null ? null : idleSettings!.toMap(),
    };
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

