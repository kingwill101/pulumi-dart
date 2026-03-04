// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_map_response.dart';

/// Azure Monitor Workspace Logs Api configurations.
class AzureMonitorWorkspaceLogsApiConfigResponse {
  /// Data collection endpoint ingestion url.
  final pulumi.Input<String> dataCollectionEndpointUrl;

  /// Data Collection Rule (DCR) immutable id.
  final pulumi.Input<String> dataCollectionRule;

  /// The schema mapping for incoming data.
  final pulumi.Input<SchemaMapResponse> schema;

  /// Stream name in destination. Azure Monitor stream is related to the destination table.
  final pulumi.Input<String> stream;

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
      'schema':
          pulumi.Input.mapInputValue<SchemaMapResponse, Map<String, dynamic>>(
            schema,
            (value) => value.toMap(),
          ),
      'stream': stream,
    };
  }

  factory AzureMonitorWorkspaceLogsApiConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureMonitorWorkspaceLogsApiConfigResponse(
      dataCollectionEndpointUrl: pulumi.Input.fromValue(
        map['dataCollectionEndpointUrl'] as String,
      ),
      dataCollectionRule: pulumi.Input.fromValue(
        map['dataCollectionRule'] as String,
      ),
      schema: pulumi.Input.fromValue(
        SchemaMapResponse.fromMap(
          (map['schema']! as Map).cast<String, dynamic>(),
        ),
      ),
      stream: pulumi.Input.fromValue(map['stream'] as String),
    );
  }
}
