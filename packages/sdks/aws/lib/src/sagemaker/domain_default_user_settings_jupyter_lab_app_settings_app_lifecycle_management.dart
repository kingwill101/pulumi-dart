// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final pulumi.Input<
    DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings
  >?
  idleSettings;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings,
            Map<String, dynamic>
          >(idleSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: (() {
        final guardedValue = map['idleSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
