// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a management cluster
class ManagementClusterResponse {
  /// The identity
  final pulumi.Input<int> clusterId;
  /// The cluster size
  final pulumi.Input<int>? clusterSize;
  /// The hosts
  final pulumi.Input<List<String>>? hosts;
  /// The state of the cluster provisioning
  final pulumi.Input<String> provisioningState;
  /// Name of the vsan datastore associated with the cluster
  final pulumi.Input<String>? vsanDatastoreName;

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
      clusterId: (map['clusterId'] as int).input(),
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize'] as int).input(),
      hosts: map['hosts'] == null ? null : ((map['hosts'] as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      vsanDatastoreName: map['vsanDatastoreName'] == null ? null : (map['vsanDatastoreName'] as String).input(),
    );
  }
}

