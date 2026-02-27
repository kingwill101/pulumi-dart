// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_peering_timeouts/cluster_peering_timeouts.dart';

/// The set of arguments for ClusterPeering.
class ClusterPeeringArgs {
  /// List of DSQL Cluster ARNs to be peered to this cluster.
  final pulumi.Input<List<String>> clusters;

  /// DSQL Cluster Identifier.
  final pulumi.Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ClusterPeeringTimeouts>? timeouts;

  /// Witness region for a multi-region cluster.
  final pulumi.Input<String> witnessRegion;

  ClusterPeeringArgs({
    required this.clusters,
    required this.identifier,
    this.region,
    this.timeouts,
    required this.witnessRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusters'] = clusters;
    map['identifier'] = identifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ClusterPeeringTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['witnessRegion'] = witnessRegion;
    return map;
  }

  factory ClusterPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPeeringArgs(
      clusters: pulumi.Input.asInput<List<String>>(map['clusters']),
      identifier: pulumi.Input.asInput<String>(map['identifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<ClusterPeeringTimeouts>(map['timeouts']),
      witnessRegion: pulumi.Input.asInput<String>(map['witnessRegion']),
    );
  }
}
