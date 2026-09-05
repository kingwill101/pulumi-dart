// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management_idle_settings.dart';

class DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idleSettings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?>? idleSettings;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idleSettings` Block below.
  const DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement(
      idleSettings: (() { final guardedValue = map['idleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
