// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity {
  /// Required. The URI of a sole-tenant /zones/us-central1-a/nodeGroups/node-group-1` * `node-group-1`
  final String nodeGroup;

  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity({
    required this.nodeGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeGroup'] = nodeGroup;
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity(
      nodeGroup: map['nodeGroup'] as String,
    );
  }
}
