// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String cloudVmClusterId;
  /// List of DB nodes along with their properties.
  final List<GetDbNodesDbNode> dbNodes;
  final String region;

  /// Creates a new [GetDbNodesResult].
  /// [cloudVmClusterId] Required.
  /// [dbNodes] List of DB nodes along with their properties.
  /// [region] Required.
  const GetDbNodesResult({
    required this.cloudVmClusterId,
    required this.dbNodes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'dbNodes': pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(dbNodes, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      dbNodes: pulumi.Input.decodeList<GetDbNodesDbNode>(map['dbNodes']!, (value) => GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
