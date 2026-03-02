// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow Source Operation properties
class DataflowSourceOperationSettingsResponse {
  /// Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  final pulumi.Input<String>? assetRef;
  /// List of source locations. Can be Broker or Kafka topics. Supports wildcards # and +.
  final pulumi.Input<List<String>> dataSources;
  /// Reference to the Dataflow Endpoint resource. Can only be of Broker and Kafka type.
  final pulumi.Input<String> endpointRef;
  /// Schema CR reference. Data will be deserialized according to the schema, and dropped if it doesn't match.
  final pulumi.Input<String>? schemaRef;
  /// Content is a JSON Schema. Allowed: JSON Schema/draft-7.
  final pulumi.Input<String>? serializationFormat;

  /// Creates a new [DataflowSourceOperationSettingsResponse].
  /// [assetRef] Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  /// [dataSources] List of source locations. Can be Broker or Kafka topics. Supports wildcards # and +.
  /// [endpointRef] Reference to the Dataflow Endpoint resource. Can only be of Broker and Kafka type.
  /// [schemaRef] Schema CR reference. Data will be deserialized according to the schema, and dropped if it doesn't match.
  /// [serializationFormat] Content is a JSON Schema. Allowed: JSON Schema/draft-7.
  DataflowSourceOperationSettingsResponse({
    this.assetRef,
    required this.dataSources,
    required this.endpointRef,
    this.schemaRef,
    this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetRef': ?assetRef,
      'dataSources': dataSources,
      'endpointRef': endpointRef,
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowSourceOperationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowSourceOperationSettingsResponse(
      assetRef: map['assetRef'] == null ? null : (map['assetRef'] as String).input(),
      dataSources: ((map['dataSources'] as List).cast<String>()).input(),
      endpointRef: (map['endpointRef'] as String).input(),
      schemaRef: map['schemaRef'] == null ? null : (map['schemaRef'] as String).input(),
      serializationFormat: map['serializationFormat'] == null ? null : (map['serializationFormat'] as String).input(),
    );
  }
}

