// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_destination_schema_settings_response.dart';

/// DataflowGraph destination node settings.
class DataflowGraphDestinationNodeSettingsResponse {
  /// Data destination at the endpoint.
  final String dataDestination;
  /// The name of the DataflowEndpoint resource .
  final String endpointRef;
  /// Output schema settings.
  final DataflowGraphDestinationSchemaSettingsResponse? outputSchemaSettings;

  /// Creates a new [DataflowGraphDestinationNodeSettingsResponse].
  /// [dataDestination] Data destination at the endpoint.
  /// [endpointRef] The name of the DataflowEndpoint resource .
  /// [outputSchemaSettings] Output schema settings.
  DataflowGraphDestinationNodeSettingsResponse({
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

  factory DataflowGraphDestinationNodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNodeSettingsResponse(
      dataDestination: map['dataDestination'] as String,
      endpointRef: map['endpointRef'] as String,
      outputSchemaSettings: map['outputSchemaSettings'] == null ? null : DataflowGraphDestinationSchemaSettingsResponse.fromMap((map['outputSchemaSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

