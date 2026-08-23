// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_selector_term.dart';

/// ClusterSelector
class PlacementV1ClusterSelector {
  /// ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  final pulumi.Input<List<PlacementV1ClusterSelectorTerm>> clusterSelectorTerms;

  /// Creates a new [PlacementV1ClusterSelector].
  /// [clusterSelectorTerms] ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  const PlacementV1ClusterSelector({
    required this.clusterSelectorTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelectorTerms': pulumi.Input.mapInputValue<List<PlacementV1ClusterSelectorTerm>, List<Map<String, dynamic>>>(clusterSelectorTerms, (value) => pulumi.Input.encodeList<PlacementV1ClusterSelectorTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlacementV1ClusterSelector.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterSelector(
      clusterSelectorTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementV1ClusterSelectorTerm>(map['clusterSelectorTerms']!, (value) => PlacementV1ClusterSelectorTerm.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
