// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_db_nodes_db_node/get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String cloudVmCluster;
  final List<GetDbNodesDbNode> dbNodes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  GetDbNodesResult({
    required this.cloudVmCluster,
    required this.dbNodes,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudVmCluster'] = cloudVmCluster;
    map['dbNodes'] =
        pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(
            dbNodes, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmCluster: map['cloudVmCluster'] as String,
      dbNodes: pulumi.Input.decodeList<GetDbNodesDbNode>(
          map['dbNodes'],
          (value) =>
              GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
