// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a management cluster
class ManagementClusterResponse {
  /// The identity
  final int clusterId;
  /// The cluster size
  final int? clusterSize;
  /// The hosts
  final List<String>? hosts;
  /// The state of the cluster provisioning
  final String provisioningState;
  /// Name of the vsan datastore associated with the cluster
  final String? vsanDatastoreName;

  /// Creates a new [ManagementClusterResponse].
  /// [clusterId] The identity
  /// [clusterSize] The cluster size
  /// [hosts] The hosts
  /// [provisioningState] The state of the cluster provisioning
  /// [vsanDatastoreName] Name of the vsan datastore associated with the cluster
  ManagementClusterResponse({
    required this.clusterId,
    this.clusterSize,
    this.hosts,
    required this.provisioningState,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'provisioningState': provisioningState,
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory ManagementClusterResponse.fromMap(Map<String, dynamic> map) {
    return ManagementClusterResponse(
      clusterId: map['clusterId'] as int,
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as int,
      hosts: map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      vsanDatastoreName: map['vsanDatastoreName'] == null ? null : map['vsanDatastoreName'] as String,
    );
  }
}

