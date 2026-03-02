// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Arc agent for a particular node in HCI Cluster.
class PerNodeStateResponse {
  /// Fully qualified resource ID for the Arc agent of this node.
  final pulumi.Input<String> arcInstance;
  /// The service principal id of the arc for server node
  final pulumi.Input<String> arcNodeServicePrincipalObjectId;
  /// Name of the Node in HCI Cluster
  final pulumi.Input<String> name;
  /// State of Arc agent in this node.
  final pulumi.Input<String> state;

  /// Creates a new [PerNodeStateResponse].
  /// [arcInstance] Fully qualified resource ID for the Arc agent of this node.
  /// [arcNodeServicePrincipalObjectId] The service principal id of the arc for server node
  /// [name] Name of the Node in HCI Cluster
  /// [state] State of Arc agent in this node.
  PerNodeStateResponse({
    required this.arcInstance,
    required this.arcNodeServicePrincipalObjectId,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcInstance': arcInstance,
      'arcNodeServicePrincipalObjectId': arcNodeServicePrincipalObjectId,
      'name': name,
      'state': state,
    };
  }

  factory PerNodeStateResponse.fromMap(Map<String, dynamic> map) {
    return PerNodeStateResponse(
      arcInstance: (map['arcInstance'] as String).input(),
      arcNodeServicePrincipalObjectId: (map['arcNodeServicePrincipalObjectId'] as String).input(),
      name: (map['name'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

