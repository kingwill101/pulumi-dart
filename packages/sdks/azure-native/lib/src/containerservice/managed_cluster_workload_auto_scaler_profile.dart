// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_workload_auto_scaler_profile_keda.dart';
import 'managed_cluster_workload_auto_scaler_profile_vertical_pod_autoscaler.dart';

/// Workload Auto-scaler profile for the managed cluster.
class ManagedClusterWorkloadAutoScalerProfile {
  /// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  final pulumi.Input<ManagedClusterWorkloadAutoScalerProfileKeda>? keda;
  /// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  final pulumi.Input<ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler>? verticalPodAutoscaler;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfile].
  /// [keda] KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  /// [verticalPodAutoscaler] VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  ManagedClusterWorkloadAutoScalerProfile({
    this.keda,
    this.verticalPodAutoscaler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keda': ?pulumi.Input.mapOptionalInputValue<ManagedClusterWorkloadAutoScalerProfileKeda, Map<String, dynamic>>(keda, (value) => value.toMap()),
      'verticalPodAutoscaler': ?pulumi.Input.mapOptionalInputValue<ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler, Map<String, dynamic>>(verticalPodAutoscaler, (value) => value.toMap()),
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfile(
      keda: map['keda'] == null ? null : (ManagedClusterWorkloadAutoScalerProfileKeda.fromMap((map['keda'] as Map).cast<String, dynamic>())).input(),
      verticalPodAutoscaler: map['verticalPodAutoscaler'] == null ? null : (ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler.fromMap((map['verticalPodAutoscaler'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

