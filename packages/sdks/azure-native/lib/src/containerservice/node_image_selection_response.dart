// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_image_version_response.dart';

/// The node image upgrade to be applied to the target nodes in update run.
class NodeImageSelectionResponse {
  /// Custom node image versions to upgrade the nodes to. This field is required if node image selection type is Custom. Otherwise, it must be empty. For each node image family (e.g., 'AKSUbuntu-1804gen2containerd'), this field can contain at most one version (e.g., only one of 'AKSUbuntu-1804gen2containerd-2023.01.12' or 'AKSUbuntu-1804gen2containerd-2023.02.12', not both). If the nodes belong to a family without a matching image version in this field, they are not upgraded.
  final pulumi.Input<List<NodeImageVersionResponse>>? customNodeImageVersions;
  /// The node image upgrade type.
  final pulumi.Input<String> type;

  /// Creates a new [NodeImageSelectionResponse].
  /// [customNodeImageVersions] Custom node image versions to upgrade the nodes to. This field is required if node image selection type is Custom. Otherwise, it must be empty. For each node image family (e.g., 'AKSUbuntu-1804gen2containerd'), this field can contain at most one version (e.g., only one of 'AKSUbuntu-1804gen2containerd-2023.01.12' or 'AKSUbuntu-1804gen2containerd-2023.02.12', not both). If the nodes belong to a family without a matching image version in this field, they are not upgraded.
  /// [type] The node image upgrade type.
  NodeImageSelectionResponse({
    this.customNodeImageVersions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customNodeImageVersions': ?pulumi.Input.mapOptionalInputValue<List<NodeImageVersionResponse>, List<Map<String, dynamic>>>(customNodeImageVersions, (value) => pulumi.Input.encodeList<NodeImageVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory NodeImageSelectionResponse.fromMap(Map<String, dynamic> map) {
    return NodeImageSelectionResponse(
      customNodeImageVersions: map['customNodeImageVersions'] == null ? null : (pulumi.Input.decodeList<NodeImageVersionResponse>(map['customNodeImageVersions']!, (value) => NodeImageVersionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

