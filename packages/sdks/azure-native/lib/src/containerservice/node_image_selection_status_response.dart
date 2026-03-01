// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_image_version_response.dart';

/// The node image upgrade specs for the update run.
class NodeImageSelectionStatusResponse {
  /// The image versions to upgrade the nodes to.
  final List<NodeImageVersionResponse> selectedNodeImageVersions;

  /// Creates a new [NodeImageSelectionStatusResponse].
  /// [selectedNodeImageVersions] The image versions to upgrade the nodes to.
  NodeImageSelectionStatusResponse({
    required this.selectedNodeImageVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedNodeImageVersions': pulumi.Input.encodeList<NodeImageVersionResponse, Map<String, dynamic>>(selectedNodeImageVersions, (value) => value.toMap()),
    };
  }

  factory NodeImageSelectionStatusResponse.fromMap(Map<String, dynamic> map) {
    return NodeImageSelectionStatusResponse(
      selectedNodeImageVersions: pulumi.Input.decodeList<NodeImageVersionResponse>(map['selectedNodeImageVersions'], (value) => NodeImageVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

