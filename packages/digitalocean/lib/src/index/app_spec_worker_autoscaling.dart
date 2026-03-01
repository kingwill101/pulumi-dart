// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_worker_autoscaling_metrics.dart';

class AppSpecWorkerAutoscaling {
  /// The maximum amount of instances for this component. Must be more than min_instance_count.
  final int maxInstanceCount;
  /// The metrics that the component is scaled on.
  final AppSpecWorkerAutoscalingMetrics metrics;
  /// The minimum amount of instances for this component. Must be less than max_instance_count.
  final int minInstanceCount;

  /// Creates a new [AppSpecWorkerAutoscaling].
  /// [maxInstanceCount] The maximum amount of instances for this component. Must be more than min_instance_count.
  /// [metrics] The metrics that the component is scaled on.
  /// [minInstanceCount] The minimum amount of instances for this component. Must be less than max_instance_count.
  AppSpecWorkerAutoscaling({
    required this.maxInstanceCount,
    required this.metrics,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'metrics': metrics.toMap(),
      'minInstanceCount': minInstanceCount,
    };
  }

  factory AppSpecWorkerAutoscaling.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAutoscaling(
      maxInstanceCount: map['maxInstanceCount'] as int,
      metrics: AppSpecWorkerAutoscalingMetrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      minInstanceCount: map['minInstanceCount'] as int,
    );
  }
}

