// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_schema_settings.dart';

/// DataflowGraph destination node settings.
class DataflowGraphDestinationNodeSettings {
  /// Data destination at the endpoint.
  final pulumi.Input<String> dataDestination;
  /// The name of the DataflowEndpoint resource .
  final pulumi.Input<String> endpointRef;
  /// Output schema settings.
  final pulumi.Input<DataflowGraphDestinationSchemaSettings>? outputSchemaSettings;

  /// Creates a new [DataflowGraphDestinationNodeSettings].
  /// [dataDestination] Data destination at the endpoint.
  /// [endpointRef] The name of the DataflowEndpoint resource .
  /// [outputSchemaSettings] Output schema settings.
  const DataflowGraphDestinationNodeSettings({
    required this.dataDestination,
    required this.endpointRef,
    this.outputSchemaSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDestination': dataDestination,
      'endpointRef': endpointRef,
      'outputSchemaSettings': ?pulumi.Input.mapOptionalInputValue<DataflowGraphDestinationSchemaSettings, Map<String, dynamic>>(outputSchemaSettings, (value) => value.toMap()),
    };
  }

  factory DataflowGraphDestinationNodeSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNodeSettings(
      dataDestination: pulumi.Input.fromValue(map['dataDestination'] as String),
      endpointRef: pulumi.Input.fromValue(map['endpointRef'] as String),
      outputSchemaSettings: (() { final guardedValue = map['outputSchemaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowGraphDestinationSchemaSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

