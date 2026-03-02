// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_schema_settings_response.dart';

/// DataflowGraph destination node settings.
class DataflowGraphDestinationNodeSettingsResponse {
  /// Data destination at the endpoint.
  final pulumi.Input<String> dataDestination;
  /// The name of the DataflowEndpoint resource .
  final pulumi.Input<String> endpointRef;
  /// Output schema settings.
  final pulumi.Input<DataflowGraphDestinationSchemaSettingsResponse>? outputSchemaSettings;

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
      'outputSchemaSettings': ?pulumi.Input.mapOptionalInputValue<DataflowGraphDestinationSchemaSettingsResponse, Map<String, dynamic>>(outputSchemaSettings, (value) => value.toMap()),
    };
  }

  factory DataflowGraphDestinationNodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNodeSettingsResponse(
      dataDestination: (map['dataDestination'] as String).input(),
      endpointRef: (map['endpointRef'] as String).input(),
      outputSchemaSettings: map['outputSchemaSettings'] == null ? null : (DataflowGraphDestinationSchemaSettingsResponse.fromMap((map['outputSchemaSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

