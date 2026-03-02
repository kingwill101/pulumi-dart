// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// (Available since v1.243.0) Whether to enable ArgoCD. Default to true. Only valid when `profile` is 'Default'. It has to be false when cluster is deleted.
  final pulumi.Input<bool>? argocdEnabled;
  /// Cluster name.
  final pulumi.Input<String>? clusterName;
  /// Cluster creation time.
  final pulumi.Input<String>? createTime;
  /// Cluster network information. See `network` below.
  final pulumi.Input<ClusterNetwork>? network;
  /// Cluster attributes. Valid values: 'Default', 'XFlow'.
  ///
  /// **Note**: When profile is Default, vswitches might not be deleted when cluster is deleted because there are some remaining resources in the vswitches. We are still fixing this problem.
  final pulumi.Input<String>? profile;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [ClusterState].
  /// [argocdEnabled] (Available since v1.243.0) Whether to enable ArgoCD. Default to true. Only valid when `profile` is 'Default'. It has to be false when cluster is deleted.
  /// [clusterName] Cluster name.
  /// [createTime] Cluster creation time.
  /// [network] Cluster network information. See `network` below.
  /// [profile] Cluster attributes. Valid values: 'Default', 'XFlow'.
  /// [status] The status of the resource.
  ClusterState({
    this.argocdEnabled,
    this.clusterName,
    this.createTime,
    this.network,
    this.profile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argocdEnabled': ?argocdEnabled,
      'clusterName': ?clusterName,
      'createTime': ?createTime,
      'network': ?pulumi.Input.mapOptionalInputValue<ClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'profile': ?profile,
      'status': ?status,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      argocdEnabled: map['argocdEnabled'] == null ? null : (map['argocdEnabled']! as bool).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      network: map['network'] == null ? null : (ClusterNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

