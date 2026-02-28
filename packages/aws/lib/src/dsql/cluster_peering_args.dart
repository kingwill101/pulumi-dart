// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_peering_timeouts.dart';

/// {@template pulumi_dsql_cluster_peering_cluster_peering_args_doc}
/// The set of arguments for ClusterPeering.
/// {@endtemplate}
/// {@macro pulumi_dsql_cluster_peering_cluster_peering_args_doc}
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

  /// Creates a new [ClusterPeeringArgs].
  /// [clusters] List of DSQL Cluster ARNs to be peered to this cluster.
  /// [identifier] DSQL Cluster Identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [witnessRegion] Witness region for a multi-region cluster.
  ClusterPeeringArgs({
    required List<String> clusters,
    required String identifier,
    String? region,
    ClusterPeeringTimeouts? timeouts,
    required String witnessRegion,
  })  : clusters = pulumi.Input.asInput<List<String>>(clusters),
        identifier = pulumi.Input.asInput<String>(identifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        timeouts =
            pulumi.Input.asOptionalInput<ClusterPeeringTimeouts>(timeouts),
        witnessRegion = pulumi.Input.asInput<String>(witnessRegion);

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
      clusters: (map['clusters'] as List).cast<String>(),
      identifier: map['identifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ClusterPeeringTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      witnessRegion: map['witnessRegion'] as String,
    );
  }
}
