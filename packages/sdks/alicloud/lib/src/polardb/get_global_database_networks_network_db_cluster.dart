// ignore_for_file: unused_element, unnecessary_cast


class GetGlobalDatabaseNetworksNetworkDbCluster {
  /// The ID of the cluster.
  final String dbClusterId;
  /// The region ID of the cluster.
  final String regionId;
  /// The role of the cluster.
  final String role;

  /// Creates a new [GetGlobalDatabaseNetworksNetworkDbCluster].
  /// [dbClusterId] The ID of the cluster.
  /// [regionId] The region ID of the cluster.
  /// [role] The role of the cluster.
  GetGlobalDatabaseNetworksNetworkDbCluster({
    required this.dbClusterId,
    required this.regionId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'regionId': regionId,
      'role': role,
    };
  }

  factory GetGlobalDatabaseNetworksNetworkDbCluster.fromMap(Map<String, dynamic> map) {
    return GetGlobalDatabaseNetworksNetworkDbCluster(
      dbClusterId: map['dbClusterId'] as String,
      regionId: map['regionId'] as String,
      role: map['role'] as String,
    );
  }
}

