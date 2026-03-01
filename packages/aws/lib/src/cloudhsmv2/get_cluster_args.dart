// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhsmv2_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_cloudhsmv2_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// ID of Cloud HSM v2 cluster.
  final pulumi.Input<String> clusterId;
  /// State of the cluster to be found.
  final pulumi.Input<String>? clusterState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] ID of Cloud HSM v2 cluster.
  /// [clusterState] State of the cluster to be found.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetClusterArgs({
    required String clusterId,
    String? clusterState,
    String? region,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      clusterState = pulumi.Input.asOptionalInput<String>(clusterState),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterState': ?clusterState,
      'region': ?region,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: map['clusterId'] as String,
      clusterState: map['clusterState'] == null ? null : map['clusterState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

