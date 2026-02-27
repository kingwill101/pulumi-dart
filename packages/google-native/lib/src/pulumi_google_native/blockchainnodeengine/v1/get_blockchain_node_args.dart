// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBlockchainNode.
class GetBlockchainNodeArgs {
  final pulumi.Input<String> blockchainNodeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetBlockchainNodeArgs({
    required this.blockchainNodeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockchainNodeId'] = blockchainNodeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBlockchainNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetBlockchainNodeArgs(
      blockchainNodeId: pulumi.Input.asInput<String>(map['blockchainNodeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
