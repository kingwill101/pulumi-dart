// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_map.dart';

/// Azure Monitor Workspace Logs Api configurations.
class AzureMonitorWorkspaceLogsApiConfig {
  /// Data collection endpoint ingestion url.
  final pulumi.Input<String> dataCollectionEndpointUrl;
  /// Data Collection Rule (DCR) immutable id.
  final pulumi.Input<String> dataCollectionRule;
  /// The schema mapping for incoming data.
  final pulumi.Input<SchemaMap> schema;
  /// Stream name in destination. Azure Monitor stream is related to the destination table.
  final pulumi.Input<String> stream;

  /// Creates a new [AzureMonitorWorkspaceLogsApiConfig].
  /// [dataCollectionEndpointUrl] Data collection endpoint ingestion url.
  /// [dataCollectionRule] Data Collection Rule (DCR) immutable id.
  /// [schema] The schema mapping for incoming data.
  /// [stream] Stream name in destination. Azure Monitor stream is related to the destination table.
  const AzureMonitorWorkspaceLogsApiConfig({
    required this.dataCollectionEndpointUrl,
    required this.dataCollectionRule,
    required this.schema,
    required this.stream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointUrl': dataCollectionEndpointUrl,
      'dataCollectionRule': dataCollectionRule,
      'schema': pulumi.Input.mapInputValue<SchemaMap, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'stream': stream,
    };
  }

  factory AzureMonitorWorkspaceLogsApiConfig.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsApiConfig(
      dataCollectionEndpointUrl: pulumi.Input.fromValue(map['dataCollectionEndpointUrl'] as String),
      dataCollectionRule: pulumi.Input.fromValue(map['dataCollectionRule'] as String),
      schema: pulumi.Input.fromValue(SchemaMap.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      stream: pulumi.Input.fromValue(map['stream'] as String),
    );
  }
}
