// ignore_for_file: unused_element, unnecessary_cast

/// ModelDeploymentMonitoringBigQueryTable specifies the BigQuery table name as well as some information of the logs stored in this table.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse {
  /// The created BigQuery table to store logs. Customer could do their own query & analysis. Format: `bq://.model_deployment_monitoring_._`
  final String bigqueryTablePath;

  /// The source of log.
  final String logSource;

  /// The type of log.
  final String logType;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse].
  /// [bigqueryTablePath] The created BigQuery table to store logs. Customer could do their own query & analysis. Format: `bq://.model_deployment_monitoring_._`
  /// [logSource] The source of log.
  /// [logType] The type of log.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse({
    required this.bigqueryTablePath,
    required this.logSource,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryTablePath'] = bigqueryTablePath;
    map['logSource'] = logSource;
    map['logType'] = logType;
    return map;
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse(
      bigqueryTablePath: map['bigqueryTablePath'] as String,
      logSource: map['logSource'] as String,
      logType: map['logType'] as String,
    );
  }
}
