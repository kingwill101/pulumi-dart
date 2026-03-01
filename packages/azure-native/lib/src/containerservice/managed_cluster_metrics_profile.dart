// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_cost_analysis.dart';

/// The metrics profile for the ManagedCluster.
class ManagedClusterMetricsProfile {
  /// The configuration for detailed per-Kubernetes resource cost analysis.
  final ManagedClusterCostAnalysis? costAnalysis;

  /// Creates a new [ManagedClusterMetricsProfile].
  /// [costAnalysis] The configuration for detailed per-Kubernetes resource cost analysis.
  ManagedClusterMetricsProfile({
    this.costAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costAnalysis': ?costAnalysis == null ? null : costAnalysis!.toMap(),
    };
  }

  factory ManagedClusterMetricsProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterMetricsProfile(
      costAnalysis: map['costAnalysis'] == null ? null : ManagedClusterCostAnalysis.fromMap((map['costAnalysis'] as Map).cast<String, dynamic>()),
    );
  }
}

