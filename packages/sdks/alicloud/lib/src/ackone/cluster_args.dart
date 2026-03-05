// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network.dart';

/// {@template pulumi_ackone_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_ackone_cluster_cluster_args_doc}
class ClusterArgs {
  /// (Available since v1.243.0) Whether to enable ArgoCD. Default to true. Only valid when `profile` is 'Default'. It has to be false when cluster is deleted.
  final pulumi.Input<bool>? argocdEnabled;
  /// Cluster name.
  final pulumi.Input<String>? clusterName;
  /// Cluster network information. See `network` below.
  final pulumi.Input<ClusterNetwork> network;
  /// Cluster attributes. Valid values: 'Default', 'XFlow'.
  ///
  /// **Note**: When profile is Default, vswitches might not be deleted when cluster is deleted because there are some remaining resources in the vswitches. We are still fixing this problem.
  final pulumi.Input<String>? profile;

  /// Creates a new [ClusterArgs].
  /// [argocdEnabled] (Available since v1.243.0) Whether to enable ArgoCD. Default to true. Only valid when `profile` is 'Default'. It has to be false when cluster is deleted.
  /// [clusterName] Cluster name.
  /// [network] Cluster network information. See `network` below.
  /// [profile] Cluster attributes. Valid values: 'Default', 'XFlow'.
  ClusterArgs({
    this.argocdEnabled,
    this.clusterName,
    required this.network,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argocdEnabled': ?argocdEnabled,
      'clusterName': ?clusterName,
      'network': pulumi.Input.mapInputValue<ClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'profile': ?profile,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      argocdEnabled: (() { final guardedValue = map['argocdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(ClusterNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

