// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_cost_analysis_response.dart';

/// The metrics profile for the ManagedCluster.
class ManagedClusterMetricsProfileResponse {
  /// The configuration for detailed per-Kubernetes resource cost analysis.
  final pulumi.Input<ManagedClusterCostAnalysisResponse?>? costAnalysis;

  /// Creates a new [ManagedClusterMetricsProfileResponse].
  /// [costAnalysis] The configuration for detailed per-Kubernetes resource cost analysis.
  const ManagedClusterMetricsProfileResponse({
    this.costAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costAnalysis': ?pulumi.Input.mapOptionalInputValue<ManagedClusterCostAnalysisResponse, Map<String, dynamic>>(costAnalysis, (value) => value.toMap()),
    };
  }

  factory ManagedClusterMetricsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterMetricsProfileResponse(
      costAnalysis: (() { final guardedValue = map['costAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterCostAnalysisResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
