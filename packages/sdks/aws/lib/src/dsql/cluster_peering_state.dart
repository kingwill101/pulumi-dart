// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_peering_timeouts.dart';

/// Input properties used for looking up and filtering ClusterPeering resources.
class ClusterPeeringState {
  /// List of DSQL Cluster ARNs to be peered to this cluster.
  final pulumi.Input<List<String>>? clusters;
  /// DSQL Cluster Identifier.
  final pulumi.Input<String>? identifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ClusterPeeringTimeouts>? timeouts;
  /// Witness region for a multi-region cluster.
  final pulumi.Input<String>? witnessRegion;

  /// Creates a new [ClusterPeeringState].
  /// [clusters] List of DSQL Cluster ARNs to be peered to this cluster.
  /// [identifier] DSQL Cluster Identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [witnessRegion] Witness region for a multi-region cluster.
  ClusterPeeringState({
    pulumi.Output<List<String>>? clusters,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterPeeringTimeouts>? timeouts,
    pulumi.Output<String>? witnessRegion,
  }) :
      clusters = pulumi.Input.asOptionalInput<List<String>>(clusters),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<ClusterPeeringTimeouts>(timeouts),
      witnessRegion = pulumi.Input.asOptionalInput<String>(witnessRegion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?clusters,
      'identifier': ?identifier,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterPeeringTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'witnessRegion': ?witnessRegion,
    };
  }

  factory ClusterPeeringState.fromMap(Map<String, dynamic> map) {
    return ClusterPeeringState(
      clusters: map['clusters'] == null ? null : pulumi.Output.create<List<String>>((map['clusters'] as List).cast<String>()),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ClusterPeeringTimeouts>(ClusterPeeringTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      witnessRegion: map['witnessRegion'] == null ? null : pulumi.Output.create<String>(map['witnessRegion'] as String),
    );
  }
}

