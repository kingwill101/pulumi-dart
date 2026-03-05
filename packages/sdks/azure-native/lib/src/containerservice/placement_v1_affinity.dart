// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_affinity.dart';

/// Affinity is a group of cluster affinity scheduling rules. More to be added.
class PlacementV1Affinity {
  /// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  final pulumi.Input<PlacementV1ClusterAffinity>? clusterAffinity;

  /// Creates a new [PlacementV1Affinity].
  /// [clusterAffinity] ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  PlacementV1Affinity({
    this.clusterAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAffinity': ?pulumi.Input.mapOptionalInputValue<PlacementV1ClusterAffinity, Map<String, dynamic>>(clusterAffinity, (value) => value.toMap()),
    };
  }

  factory PlacementV1Affinity.fromMap(Map<String, dynamic> map) {
    return PlacementV1Affinity(
      clusterAffinity: (() { final guardedValue = map['clusterAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1ClusterAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

