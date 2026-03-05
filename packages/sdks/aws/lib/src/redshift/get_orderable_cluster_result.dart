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

  /// Creates a new [GetOrderableClusterResult].
  /// [availabilityZones] List of Availability Zone names where the Redshift Cluster is available.
  /// [clusterType] Required.
  /// [clusterVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nodeType] Required.
  /// [preferredNodeTypes] Optional.
  /// [region] Required.
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
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'id': id,
      'nodeType': nodeType,
      'preferredNodeTypes': ?preferredNodeTypes,
      'region': region,
    };
  }

  factory GetOrderableClusterResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableClusterResult(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      clusterType: map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] as String,
      id: map['id'] as String,
      nodeType: map['nodeType'] as String,
      preferredNodeTypes: (() { final guardedValue = map['preferredNodeTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: map['region'] as String,
    );
  }
}

