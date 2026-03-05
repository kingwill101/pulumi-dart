// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGlobalDatabaseNetworksNetworkDbCluster {
  /// The ID of the cluster.
  final pulumi.Input<String> dbClusterId;
  /// The region ID of the cluster.
  final pulumi.Input<String> regionId;
  /// The role of the cluster.
  final pulumi.Input<String> role;

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
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

