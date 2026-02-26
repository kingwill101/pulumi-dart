// ignore_for_file: unused_element, unnecessary_cast

import '../domain_default_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings/domain_default_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see <span pulumi-lang-nodejs="`idleSettings`" pulumi-lang-dotnet="`IdleSettings`" pulumi-lang-go="`idleSettings`" pulumi-lang-python="`idle_settings`" pulumi-lang-yaml="`idleSettings`" pulumi-lang-java="`idleSettings`">`idle_settings`</span> Block below.
  final DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
      idleSettings;

  DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
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

  factory DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings
              .fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
