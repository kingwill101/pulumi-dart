// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_peering_timeouts/cluster_peering_timeouts.dart';

/// The set of arguments for ClusterPeering.
class ClusterPeeringArgs {
  /// List of DSQL Cluster ARNs to be peered to this cluster.
  final Input<List<String>> clusters;

  /// DSQL Cluster Identifier.
  final Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<ClusterPeeringTimeouts>? timeouts;

  /// Witness region for a multi-region cluster.
  final Input<String> witnessRegion;

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
      map['timeouts'] = Input.mapOptionalInputValue<ClusterPeeringTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['witnessRegion'] = witnessRegion;
    return map;
  }

  factory ClusterPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPeeringArgs(
      clusters: Input.asInput<List<String>>(map['clusters']),
      identifier: Input.asInput<String>(map['identifier']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<ClusterPeeringTimeouts>(map['timeouts']),
      witnessRegion: Input.asInput<String>(map['witnessRegion']),
    );
  }
}
