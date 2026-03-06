// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration {
  /// Specifies how the application should be restored. Valid values: `RESTORE_FROM_CUSTOM_SNAPSHOT`, `RESTORE_FROM_LATEST_SNAPSHOT`, `SKIP_RESTORE_FROM_SNAPSHOT`.
  final pulumi.Input<String>? applicationRestoreType;
  /// The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if `RESTORE_FROM_CUSTOM_SNAPSHOT` is specified for `application_restore_type`.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration].
  /// [applicationRestoreType] Specifies how the application should be restored. Valid values: `RESTORE_FROM_CUSTOM_SNAPSHOT`, `RESTORE_FROM_LATEST_SNAPSHOT`, `SKIP_RESTORE_FROM_SNAPSHOT`.
  /// [snapshotName] The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if `RESTORE_FROM_CUSTOM_SNAPSHOT` is specified for `application_restore_type`.
  const ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration({
    this.applicationRestoreType,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationRestoreType': ?applicationRestoreType,
      'snapshotName': ?snapshotName,
    };
  }

  factory ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration(
      applicationRestoreType: (() { final guardedValue = map['applicationRestoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

