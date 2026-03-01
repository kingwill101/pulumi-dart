// ignore_for_file: unused_element, unnecessary_cast

import 'schema_map_response.dart';

/// Azure Monitor Workspace Logs Api configurations.
class AzureMonitorWorkspaceLogsApiConfigResponse {
  /// Data collection endpoint ingestion url.
  final String dataCollectionEndpointUrl;
  /// Data Collection Rule (DCR) immutable id.
  final String dataCollectionRule;
  /// The schema mapping for incoming data.
  final SchemaMapResponse schema;
  /// Stream name in destination. Azure Monitor stream is related to the destination table.
  final String stream;

  /// Creates a new [AzureMonitorWorkspaceLogsApiConfigResponse].
  /// [dataCollectionEndpointUrl] Data collection endpoint ingestion url.
  /// [dataCollectionRule] Data Collection Rule (DCR) immutable id.
  /// [schema] The schema mapping for incoming data.
  /// [stream] Stream name in destination. Azure Monitor stream is related to the destination table.
  AzureMonitorWorkspaceLogsApiConfigResponse({
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

  factory AzureMonitorWorkspaceLogsApiConfigResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsApiConfigResponse(
      dataCollectionEndpointUrl: map['dataCollectionEndpointUrl'] as String,
      dataCollectionRule: map['dataCollectionRule'] as String,
      schema: SchemaMapResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      stream: map['stream'] as String,
    );
  }
}

