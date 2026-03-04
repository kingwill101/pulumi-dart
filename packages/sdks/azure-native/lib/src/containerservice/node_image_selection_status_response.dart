// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_image_version_response.dart';

/// The node image upgrade specs for the update run.
class NodeImageSelectionStatusResponse {
  /// The image versions to upgrade the nodes to.
  final pulumi.Input<List<NodeImageVersionResponse>> selectedNodeImageVersions;

  /// Creates a new [NodeImageSelectionStatusResponse].
  /// [selectedNodeImageVersions] The image versions to upgrade the nodes to.
  NodeImageSelectionStatusResponse({required this.selectedNodeImageVersions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedNodeImageVersions':
          pulumi.Input.mapInputValue<
            List<NodeImageVersionResponse>,
            List<Map<String, dynamic>>
          >(
            selectedNodeImageVersions,
            (value) =>
                pulumi.Input.encodeList<
                  NodeImageVersionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NodeImageSelectionStatusResponse.fromMap(Map<String, dynamic> map) {
    return NodeImageSelectionStatusResponse(
      selectedNodeImageVersions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NodeImageVersionResponse>(
          map['selectedNodeImageVersions']!,
          (value) => NodeImageVersionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
