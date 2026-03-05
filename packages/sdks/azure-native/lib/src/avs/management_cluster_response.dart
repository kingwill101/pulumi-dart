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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as int),
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      vsanDatastoreName: (() { final guardedValue = map['vsanDatastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

