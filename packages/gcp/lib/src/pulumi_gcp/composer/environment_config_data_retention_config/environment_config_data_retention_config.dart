// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_config_data_retention_config_airflow_metadata_retention_config/environment_config_data_retention_config_airflow_metadata_retention_config.dart';
import '../environment_config_data_retention_config_task_logs_retention_config/environment_config_data_retention_config_task_logs_retention_config.dart';

class EnvironmentConfigDataRetentionConfig {
  /// Optional. The policy for airflow metadata database retention.
  final List<
          EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>?
      airflowMetadataRetentionConfigs;

  /// Optional. The configuration setting for Task Logs.
  final List<EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>?
      taskLogsRetentionConfigs;

  EnvironmentConfigDataRetentionConfig({
    this.airflowMetadataRetentionConfigs,
    this.taskLogsRetentionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final airflowMetadataRetentionConfigsValue =
        airflowMetadataRetentionConfigs;
    if (airflowMetadataRetentionConfigsValue != null) {
      map['airflowMetadataRetentionConfigs'] = pulumi.Input.encodeList<
              EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig,
              Map<String, dynamic>>(
          airflowMetadataRetentionConfigsValue, (value) => value.toMap());
    }
    final taskLogsRetentionConfigsValue = taskLogsRetentionConfigs;
    if (taskLogsRetentionConfigsValue != null) {
      map['taskLogsRetentionConfigs'] = pulumi.Input.encodeList<
              EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig,
              Map<String, dynamic>>(
          taskLogsRetentionConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentConfigDataRetentionConfig.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigDataRetentionConfig(
      airflowMetadataRetentionConfigs: map['airflowMetadataRetentionConfigs'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>(
              map['airflowMetadataRetentionConfigs'],
              (value) =>
                  EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      taskLogsRetentionConfigs: map['taskLogsRetentionConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>(
              map['taskLogsRetentionConfigs'],
              (value) =>
                  EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
