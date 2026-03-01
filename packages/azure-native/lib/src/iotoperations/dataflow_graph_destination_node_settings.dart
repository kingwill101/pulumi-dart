// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_destination_schema_settings.dart';

/// DataflowGraph destination node settings.
class DataflowGraphDestinationNodeSettings {
  /// Data destination at the endpoint.
  final String dataDestination;
  /// The name of the DataflowEndpoint resource .
  final String endpointRef;
  /// Output schema settings.
  final DataflowGraphDestinationSchemaSettings? outputSchemaSettings;

  /// Creates a new [DataflowGraphDestinationNodeSettings].
  /// [dataDestination] Data destination at the endpoint.
  /// [endpointRef] The name of the DataflowEndpoint resource .
  /// [outputSchemaSettings] Output schema settings.
  DataflowGraphDestinationNodeSettings({
    required this.dataDestination,
    required this.endpointRef,
    this.outputSchemaSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDestination': dataDestination,
      'endpointRef': endpointRef,
      'outputSchemaSettings': ?outputSchemaSettings == null ? null : outputSchemaSettings!.toMap(),
    };
  }

  factory DataflowGraphDestinationNodeSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNodeSettings(
      dataDestination: map['dataDestination'] as String,
      endpointRef: map['endpointRef'] as String,
      outputSchemaSettings: map['outputSchemaSettings'] == null ? null : DataflowGraphDestinationSchemaSettings.fromMap((map['outputSchemaSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

