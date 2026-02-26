// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrderableCluster.
class GetOrderableClusterResult {
  /// List of Availability Zone names where the Redshift Cluster is available.
  final List<String> availabilityZones;
  final String clusterType;
  final String clusterVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String nodeType;
  final List<String>? preferredNodeTypes;
  final String region;

  GetOrderableClusterResult({
    required this.availabilityZones,
    required this.clusterType,
    required this.clusterVersion,
    required this.id,
    required this.nodeType,
    this.preferredNodeTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    map['clusterType'] = clusterType;
    map['clusterVersion'] = clusterVersion;
    map['id'] = id;
    map['nodeType'] = nodeType;
    final preferredNodeTypesValue = preferredNodeTypes;
    if (preferredNodeTypesValue != null) {
      map['preferredNodeTypes'] = preferredNodeTypesValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetOrderableClusterResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableClusterResult(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      clusterType: map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] as String,
      id: map['id'] as String,
      nodeType: map['nodeType'] as String,
      preferredNodeTypes: map['preferredNodeTypes'] == null
          ? null
          : (map['preferredNodeTypes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
