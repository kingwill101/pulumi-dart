// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_environment_config_data_retention_config_airflow_metadata_retention_config/get_environment_config_data_retention_config_airflow_metadata_retention_config.dart';
import '../get_environment_config_data_retention_config_task_logs_retention_config/get_environment_config_data_retention_config_task_logs_retention_config.dart';

class GetEnvironmentConfigDataRetentionConfig {
  /// Optional. The policy for airflow metadata database retention.
  final List<
          GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>
      airflowMetadataRetentionConfigs;

  /// Optional. The configuration setting for Task Logs.
  final List<GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>
      taskLogsRetentionConfigs;

  GetEnvironmentConfigDataRetentionConfig({
    required this.airflowMetadataRetentionConfigs,
    required this.taskLogsRetentionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['airflowMetadataRetentionConfigs'] = pulumi.Input.encodeList<
        GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig,
        Map<String,
            dynamic>>(airflowMetadataRetentionConfigs, (value) => value.toMap());
    map['taskLogsRetentionConfigs'] = pulumi.Input.encodeList<
            GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig,
            Map<String, dynamic>>(
        taskLogsRetentionConfigs, (value) => value.toMap());
    return map;
  }

  factory GetEnvironmentConfigDataRetentionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigDataRetentionConfig(
      airflowMetadataRetentionConfigs: pulumi.Input.decodeList<
              GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>(
          map['airflowMetadataRetentionConfigs'],
          (value) =>
              GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      taskLogsRetentionConfigs: pulumi.Input.decodeList<
              GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>(
          map['taskLogsRetentionConfigs'],
          (value) =>
              GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
