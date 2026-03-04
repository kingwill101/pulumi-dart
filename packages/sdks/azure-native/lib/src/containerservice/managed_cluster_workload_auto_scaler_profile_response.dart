// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_workload_auto_scaler_profile_keda_response.dart';
import 'managed_cluster_workload_auto_scaler_profile_vertical_pod_autoscaler_response.dart';

/// Workload Auto-scaler profile for the managed cluster.
class ManagedClusterWorkloadAutoScalerProfileResponse {
  /// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  final pulumi.Input<ManagedClusterWorkloadAutoScalerProfileKedaResponse>? keda;

  /// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  final pulumi.Input<
    ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse
  >?
  verticalPodAutoscaler;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileResponse].
  /// [keda] KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
  /// [verticalPodAutoscaler] VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
  ManagedClusterWorkloadAutoScalerProfileResponse({
    this.keda,
    this.verticalPodAutoscaler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keda':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedClusterWorkloadAutoScalerProfileKedaResponse,
            Map<String, dynamic>
          >(keda, (value) => value.toMap()),
      'verticalPodAutoscaler':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse,
            Map<String, dynamic>
          >(verticalPodAutoscaler, (value) => value.toMap()),
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterWorkloadAutoScalerProfileResponse(
      keda: (() {
        final guardedValue = map['keda'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedClusterWorkloadAutoScalerProfileKedaResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      verticalPodAutoscaler: (() {
        final guardedValue = map['verticalPodAutoscaler'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
