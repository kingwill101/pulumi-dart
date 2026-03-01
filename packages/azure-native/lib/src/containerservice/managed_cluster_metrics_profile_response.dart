// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_cost_analysis_response.dart';

/// The metrics profile for the ManagedCluster.
class ManagedClusterMetricsProfileResponse {
  /// The configuration for detailed per-Kubernetes resource cost analysis.
  final ManagedClusterCostAnalysisResponse? costAnalysis;

  /// Creates a new [ManagedClusterMetricsProfileResponse].
  /// [costAnalysis] The configuration for detailed per-Kubernetes resource cost analysis.
  ManagedClusterMetricsProfileResponse({
    this.costAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costAnalysis': ?costAnalysis == null ? null : costAnalysis!.toMap(),
    };
  }

  factory ManagedClusterMetricsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterMetricsProfileResponse(
      costAnalysis: map['costAnalysis'] == null ? null : ManagedClusterCostAnalysisResponse.fromMap((map['costAnalysis'] as Map).cast<String, dynamic>()),
    );
  }
}

