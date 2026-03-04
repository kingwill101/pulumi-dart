// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_graph_node_configuration.dart';

/// DataflowGraph graph node settings.
class DataflowGraphNodeGraphSettings {
  /// The artifact name and version to pull. This should be in the format `&lt;artifact-name&gt;:&lt;version&gt;`.
  final pulumi.Input<String> artifact;

  /// Configuration key-value pairs.
  final pulumi.Input<List<DataflowGraphGraphNodeConfiguration>>? configuration;

  /// Reference to the registry endpoint for pulling the artifact.
  final pulumi.Input<String> registryEndpointRef;

  /// Creates a new [DataflowGraphNodeGraphSettings].
  /// [artifact] The artifact name and version to pull. This should be in the format `&lt;artifact-name&gt;:&lt;version&gt;`.
  /// [configuration] Configuration key-value pairs.
  /// [registryEndpointRef] Reference to the registry endpoint for pulling the artifact.
  DataflowGraphNodeGraphSettings({
    required this.artifact,
    this.configuration,
    required this.registryEndpointRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact': artifact,
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataflowGraphGraphNodeConfiguration>,
            List<Map<String, dynamic>>
          >(
            configuration,
            (value) =>
                pulumi.Input.encodeList<
                  DataflowGraphGraphNodeConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'registryEndpointRef': registryEndpointRef,
    };
  }

  factory DataflowGraphNodeGraphSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphNodeGraphSettings(
      artifact: pulumi.Input.fromValue(map['artifact'] as String),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataflowGraphGraphNodeConfiguration>(
            guardedValue,
            (value) => DataflowGraphGraphNodeConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      registryEndpointRef: pulumi.Input.fromValue(
        map['registryEndpointRef'] as String,
      ),
    );
  }
}
