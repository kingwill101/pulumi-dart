// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a management cluster
class ManagementCluster {
  /// The cluster size
  final int? clusterSize;
  /// The hosts
  final List<String>? hosts;
  /// Name of the vsan datastore associated with the cluster
  final String? vsanDatastoreName;

  /// Creates a new [ManagementCluster].
  /// [clusterSize] The cluster size
  /// [hosts] The hosts
  /// [vsanDatastoreName] Name of the vsan datastore associated with the cluster
  ManagementCluster({
    this.clusterSize,
    this.hosts,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory ManagementCluster.fromMap(Map<String, dynamic> map) {
    return ManagementCluster(
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as int,
      hosts: map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      vsanDatastoreName: map['vsanDatastoreName'] == null ? null : map['vsanDatastoreName'] as String,
    );
  }
}

