// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_graph_node_configuration_response.dart';

/// DataflowGraph graph node settings.
class DataflowGraphNodeGraphSettingsResponse {
  /// The artifact name and version to pull. This should be in the format `<artifact-name>:<version>`.
  final String artifact;
  /// Configuration key-value pairs.
  final List<DataflowGraphGraphNodeConfigurationResponse>? configuration;
  /// Reference to the registry endpoint for pulling the artifact.
  final String registryEndpointRef;

  /// Creates a new [DataflowGraphNodeGraphSettingsResponse].
  /// [artifact] The artifact name and version to pull. This should be in the format `<artifact-name>:<version>`.
  /// [configuration] Configuration key-value pairs.
  /// [registryEndpointRef] Reference to the registry endpoint for pulling the artifact.
  DataflowGraphNodeGraphSettingsResponse({
    required this.artifact,
    this.configuration,
    required this.registryEndpointRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact': artifact,
      'configuration': ?configuration == null ? null : pulumi.Input.encodeList<DataflowGraphGraphNodeConfigurationResponse, Map<String, dynamic>>(configuration!, (value) => value.toMap()),
      'registryEndpointRef': registryEndpointRef,
    };
  }

  factory DataflowGraphNodeGraphSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphNodeGraphSettingsResponse(
      artifact: map['artifact'] as String,
      configuration: map['configuration'] == null ? null : pulumi.Input.decodeList<DataflowGraphGraphNodeConfigurationResponse>(map['configuration'], (value) => DataflowGraphGraphNodeConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      registryEndpointRef: map['registryEndpointRef'] as String,
    );
  }
}

