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
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNetwork,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'profile': ?profile,
      'status': ?status,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      argocdEnabled: (() {
        final guardedValue = map['argocdEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
