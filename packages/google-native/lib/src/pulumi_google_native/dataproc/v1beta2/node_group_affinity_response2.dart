// ignore_for_file: unused_element, unnecessary_cast

/// Node Group Affinity for clusters using sole-tenant node groups.
class NodeGroupAffinityResponse2 {
  /// The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 node-group-1
  final String nodeGroupUri;

  NodeGroupAffinityResponse2({
    required this.nodeGroupUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeGroupUri'] = nodeGroupUri;
    return map;
  }

  factory NodeGroupAffinityResponse2.fromMap(Map<String, dynamic> map) {
    return NodeGroupAffinityResponse2(
      nodeGroupUri: map['nodeGroupUri'] as String,
    );
  }
}
