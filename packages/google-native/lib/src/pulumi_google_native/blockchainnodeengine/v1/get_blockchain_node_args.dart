// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBlockchainNode.
class GetBlockchainNodeArgs {
  final Input<String> blockchainNodeId;
  final Input<String> location;
  final Input<String>? project;

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
      blockchainNodeId: Input.asInput<String>(map['blockchainNodeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
