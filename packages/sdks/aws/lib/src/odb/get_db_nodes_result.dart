// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String? cloudVmClusterId;
  /// List of DB nodes along with their properties.
  final List<GetDbNodesDbNode>? dbNodes;
  final String? region;

  /// Creates a new [GetDbNodesResult].
  /// [cloudVmClusterId] Optional.
  /// [dbNodes] List of DB nodes along with their properties.
  /// [region] Optional.
  const GetDbNodesResult({
    this.cloudVmClusterId,
    this.dbNodes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': ?cloudVmClusterId,
      'dbNodes': ?(() { final guardedValue = dbNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmClusterId: (() { final guardedValue = map['cloudVmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodes: (() { final guardedValue = map['dbNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbNodesDbNode>(guardedValue, (value) => GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
