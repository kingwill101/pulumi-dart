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
  const ClusterPeeringArgs({
    required this.clusters,
    required this.identifier,
    this.region,
    this.timeouts,
    required this.witnessRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': clusters,
      'identifier': identifier,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterPeeringTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'witnessRegion': witnessRegion,
    };
  }

  factory ClusterPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPeeringArgs(
      clusters: pulumi.Input.fromValue((map['clusters'] as List).cast<String>()),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPeeringTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      witnessRegion: pulumi.Input.fromValue(map['witnessRegion'] as String),
    );
  }
}
