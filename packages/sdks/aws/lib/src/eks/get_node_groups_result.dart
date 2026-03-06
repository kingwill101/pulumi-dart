// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeGroups.
class GetNodeGroupsResult {
  final String clusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of all node group names in an EKS Cluster.
  final List<String> names;
  final String region;

  /// Creates a new [GetNodeGroupsResult].
  /// [clusterName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of all node group names in an EKS Cluster.
  /// [region] Required.
  const GetNodeGroupsResult({
    required this.clusterName,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetNodeGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupsResult(
      clusterName: map['clusterName'] as String,
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

