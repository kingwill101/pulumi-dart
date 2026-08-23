// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector_term_response.dart';

/// ClusterSelector
class ClusterSelectorResponse {
  /// ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  final pulumi.Input<List<ClusterSelectorTermResponse>> clusterSelectorTerms;

  /// Creates a new [ClusterSelectorResponse].
  /// [clusterSelectorTerms] ClusterSelectorTerms is a list of cluster selector terms. The terms are `ORed`.
  const ClusterSelectorResponse({
    required this.clusterSelectorTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelectorTerms': pulumi.Input.mapInputValue<List<ClusterSelectorTermResponse>, List<Map<String, dynamic>>>(clusterSelectorTerms, (value) => pulumi.Input.encodeList<ClusterSelectorTermResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterSelectorResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSelectorResponse(
      clusterSelectorTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterSelectorTermResponse>(map['clusterSelectorTerms']!, (value) => ClusterSelectorTermResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
