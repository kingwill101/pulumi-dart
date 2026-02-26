// ignore_for_file: unused_element, unnecessary_cast

import '../domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings/domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see <span pulumi-lang-nodejs="`idleSettings`" pulumi-lang-dotnet="`IdleSettings`" pulumi-lang-go="`idleSettings`" pulumi-lang-python="`idle_settings`" pulumi-lang-yaml="`idleSettings`" pulumi-lang-java="`idleSettings`">`idle_settings`</span> Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
      idleSettings;

  DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
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

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings
              .fromMap((map['idleSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
