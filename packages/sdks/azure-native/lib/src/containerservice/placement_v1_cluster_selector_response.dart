// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_selector_term_response.dart';

/// ClusterSelector
class PlacementV1ClusterSelectorResponse {
  /// ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  final pulumi.Input<List<PlacementV1ClusterSelectorTermResponse>> clusterSelectorTerms;

  /// Creates a new [PlacementV1ClusterSelectorResponse].
  /// [clusterSelectorTerms] ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  PlacementV1ClusterSelectorResponse({
    required this.clusterSelectorTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelectorTerms': pulumi.Input.mapInputValue<List<PlacementV1ClusterSelectorTermResponse>, List<Map<String, dynamic>>>(clusterSelectorTerms, (value) => pulumi.Input.encodeList<PlacementV1ClusterSelectorTermResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlacementV1ClusterSelectorResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterSelectorResponse(
      clusterSelectorTerms: (pulumi.Input.decodeList<PlacementV1ClusterSelectorTermResponse>(map['clusterSelectorTerms'], (value) => PlacementV1ClusterSelectorTermResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

