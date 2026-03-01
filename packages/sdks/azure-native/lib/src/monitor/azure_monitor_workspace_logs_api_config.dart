// ignore_for_file: unused_element, unnecessary_cast

import 'schema_map.dart';

/// Azure Monitor Workspace Logs Api configurations.
class AzureMonitorWorkspaceLogsApiConfig {
  /// Data collection endpoint ingestion url.
  final String dataCollectionEndpointUrl;
  /// Data Collection Rule (DCR) immutable id.
  final String dataCollectionRule;
  /// The schema mapping for incoming data.
  final SchemaMap schema;
  /// Stream name in destination. Azure Monitor stream is related to the destination table.
  final String stream;

  /// Creates a new [AzureMonitorWorkspaceLogsApiConfig].
  /// [dataCollectionEndpointUrl] Data collection endpoint ingestion url.
  /// [dataCollectionRule] Data Collection Rule (DCR) immutable id.
  /// [schema] The schema mapping for incoming data.
  /// [stream] Stream name in destination. Azure Monitor stream is related to the destination table.
  AzureMonitorWorkspaceLogsApiConfig({
    required this.dataCollectionEndpointUrl,
    required this.dataCollectionRule,
    required this.schema,
    required this.stream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointUrl': dataCollectionEndpointUrl,
      'dataCollectionRule': dataCollectionRule,
      'schema': schema.toMap(),
      'stream': stream,
    };
  }

  factory AzureMonitorWorkspaceLogsApiConfig.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsApiConfig(
      dataCollectionEndpointUrl: map['dataCollectionEndpointUrl'] as String,
      dataCollectionRule: map['dataCollectionRule'] as String,
      schema: SchemaMap.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      stream: map['stream'] as String,
    );
  }
}

