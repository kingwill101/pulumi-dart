// ignore_for_file: unused_element, unnecessary_cast

import 'domain_default_user_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings? idleSettings;

  /// Creates a new [DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?idleSettings == null ? null : idleSettings!.toMap(),
    };
  }

  factory DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

