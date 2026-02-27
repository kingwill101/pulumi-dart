// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterArgs {
  /// ID of Cloud HSM v2 cluster.
  final pulumi.Input<String> clusterId;

  /// State of the cluster to be found.
  final pulumi.Input<String>? clusterState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetClusterArgs({
    required this.clusterId,
    this.clusterState,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final clusterStateValue = clusterState;
    if (clusterStateValue != null) {
      map['clusterState'] = clusterStateValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      clusterState: pulumi.Input.asOptionalInput<String>(map['clusterState']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
