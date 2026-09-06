// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow Source Operation properties
class DataflowSourceOperationSettings {
  /// Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  final pulumi.Input<String?>? assetRef;
  /// List of source locations. Can be Broker or Kafka topics. Supports wildcards # and +.
  final pulumi.Input<List<String>> dataSources;
  /// Reference to the Dataflow Endpoint resource. Can only be of Broker and Kafka type.
  final pulumi.Input<String> endpointRef;
  /// Schema CR reference. Data will be deserialized according to the schema, and dropped if it doesn't match.
  final pulumi.Input<String?>? schemaRef;
  /// Content is a JSON Schema. Allowed: JSON Schema/draft-7.
  final pulumi.Input<dynamic>? serializationFormat;

  /// Creates a new [DataflowSourceOperationSettings].
  /// [assetRef] Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  /// [dataSources] List of source locations. Can be Broker or Kafka topics. Supports wildcards # and +.
  /// [endpointRef] Reference to the Dataflow Endpoint resource. Can only be of Broker and Kafka type.
  /// [schemaRef] Schema CR reference. Data will be deserialized according to the schema, and dropped if it doesn't match.
  /// [serializationFormat] Content is a JSON Schema. Allowed: JSON Schema/draft-7.
  DataflowSourceOperationSettings({
    this.assetRef,
    required this.dataSources,
    required this.endpointRef,
    this.schemaRef,
    pulumi.Input<dynamic>? serializationFormat,
  }) : serializationFormat = serializationFormat ?? pulumi.Input.fromValue('Json');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetRef': ?assetRef,
      'dataSources': dataSources,
      'endpointRef': endpointRef,
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowSourceOperationSettings.fromMap(Map<String, dynamic> map) {
    return DataflowSourceOperationSettings(
      assetRef: (() { final guardedValue = map['assetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSources: pulumi.Input.fromValue((map['dataSources'] as List).cast<String>()),
      endpointRef: pulumi.Input.fromValue(map['endpointRef'] as String),
      schemaRef: (() { final guardedValue = map['schemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serializationFormat: (() { final guardedValue = map['serializationFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
