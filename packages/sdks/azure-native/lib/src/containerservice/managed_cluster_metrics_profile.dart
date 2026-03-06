// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_cost_analysis.dart';

/// The metrics profile for the ManagedCluster.
class ManagedClusterMetricsProfile {
  /// The configuration for detailed per-Kubernetes resource cost analysis.
  final pulumi.Input<ManagedClusterCostAnalysis>? costAnalysis;

  /// Creates a new [ManagedClusterMetricsProfile].
  /// [costAnalysis] The configuration for detailed per-Kubernetes resource cost analysis.
  const ManagedClusterMetricsProfile({
    this.costAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costAnalysis': ?pulumi.Input.mapOptionalInputValue<ManagedClusterCostAnalysis, Map<String, dynamic>>(costAnalysis, (value) => value.toMap()),
    };
  }

  factory ManagedClusterMetricsProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterMetricsProfile(
      costAnalysis: (() { final guardedValue = map['costAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterCostAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

