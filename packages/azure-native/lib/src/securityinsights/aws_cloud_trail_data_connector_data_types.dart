// ignore_for_file: unused_element, unnecessary_cast

import 'aws_cloud_trail_data_connector_data_types_logs.dart';

/// The available data types for Amazon Web Services CloudTrail data connector.
class AwsCloudTrailDataConnectorDataTypes {
  /// Logs data type.
  final AwsCloudTrailDataConnectorDataTypesLogs logs;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypes].
  /// [logs] Logs data type.
  AwsCloudTrailDataConnectorDataTypes({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs.toMap(),
    };
  }

  factory AwsCloudTrailDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypes(
      logs: AwsCloudTrailDataConnectorDataTypesLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
    );
  }
}

