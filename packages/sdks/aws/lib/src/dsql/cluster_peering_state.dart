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
  const ClusterPeeringState({
    this.clusters,
    this.identifier,
    this.region,
    this.timeouts,
    this.witnessRegion,
  });

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
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPeeringTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      witnessRegion: (() { final guardedValue = map['witnessRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
