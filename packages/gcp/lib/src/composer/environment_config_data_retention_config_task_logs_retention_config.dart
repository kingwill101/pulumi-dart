// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig {
  /// Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  final String? storageMode;

  /// Creates a new [EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig].
  /// [storageMode] Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig({
    this.storageMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final storageModeValue = storageMode;
    if (storageModeValue != null) {
      map['storageMode'] = storageModeValue;
    }
    return map;
  }

  factory EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig(
      storageMode:
          map['storageMode'] == null ? null : map['storageMode'] as String,
    );
  }
}
