// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The node upgrade image version.
class NodeImageVersionResponse {
  /// The image version to upgrade the nodes to (e.g., 'AKSUbuntu-1804gen2containerd-2022.12.13').
  final pulumi.Input<String> version;

  /// Creates a new [NodeImageVersionResponse].
  /// [version] The image version to upgrade the nodes to (e.g., 'AKSUbuntu-1804gen2containerd-2022.12.13').
  const NodeImageVersionResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory NodeImageVersionResponse.fromMap(Map<String, dynamic> map) {
    return NodeImageVersionResponse(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

