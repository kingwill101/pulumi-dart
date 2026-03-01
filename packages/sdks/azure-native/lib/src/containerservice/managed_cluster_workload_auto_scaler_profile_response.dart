// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_workload_auto_scaler_profile_keda_response.dart';
import 'managed_cluster_workload_auto_scaler_profile_vertical_pod_autoscaler_response.dart';

/// Workload Auto-scaler profile for the managed cluster.
class ManagedClusterWorkloadAutoScalerProfileResponse {
  /// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  final ManagedClusterWorkloadAutoScalerProfileKedaResponse? keda;
  /// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  final ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse? verticalPodAutoscaler;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileResponse].
  /// [keda] KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  /// [verticalPodAutoscaler] VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  ManagedClusterWorkloadAutoScalerProfileResponse({
    this.keda,
    this.verticalPodAutoscaler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keda': ?keda == null ? null : keda!.toMap(),
      'verticalPodAutoscaler': ?verticalPodAutoscaler == null ? null : verticalPodAutoscaler!.toMap(),
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileResponse(
      keda: map['keda'] == null ? null : ManagedClusterWorkloadAutoScalerProfileKedaResponse.fromMap((map['keda'] as Map).cast<String, dynamic>()),
      verticalPodAutoscaler: map['verticalPodAutoscaler'] == null ? null : ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse.fromMap((map['verticalPodAutoscaler'] as Map).cast<String, dynamic>()),
    );
  }
}

