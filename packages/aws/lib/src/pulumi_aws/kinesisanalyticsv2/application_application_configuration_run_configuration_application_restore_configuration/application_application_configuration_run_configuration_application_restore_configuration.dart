// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration {
  /// Specifies how the application should be restored. Valid values: `RESTORE_FROM_CUSTOM_SNAPSHOT`, `RESTORE_FROM_LATEST_SNAPSHOT`, `SKIP_RESTORE_FROM_SNAPSHOT`.
  final String? applicationRestoreType;

  /// The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if `RESTORE_FROM_CUSTOM_SNAPSHOT` is specified for `application_restore_type`.
  final String? snapshotName;

  ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration({
    this.applicationRestoreType,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationRestoreTypeValue = applicationRestoreType;
    if (applicationRestoreTypeValue != null) {
      map['applicationRestoreType'] = applicationRestoreTypeValue;
    }
    final snapshotNameValue = snapshotName;
    if (snapshotNameValue != null) {
      map['snapshotName'] = snapshotNameValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration(
      applicationRestoreType: map['applicationRestoreType'] == null
          ? null
          : map['applicationRestoreType'] as String,
      snapshotName:
          map['snapshotName'] == null ? null : map['snapshotName'] as String,
    );
  }
}
