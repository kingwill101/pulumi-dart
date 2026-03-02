// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings>? idleSettings;

  /// Creates a new [DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : (DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

