// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_service_autoscaling_metrics.dart';

class AppSpecServiceAutoscaling {
  /// The maximum amount of instances for this component. Must be more than min_instance_count.
  final int maxInstanceCount;
  /// The metrics that the component is scaled on.
  final AppSpecServiceAutoscalingMetrics metrics;
  /// The minimum amount of instances for this component. Must be less than max_instance_count.
  final int minInstanceCount;

  /// Creates a new [AppSpecServiceAutoscaling].
  /// [maxInstanceCount] The maximum amount of instances for this component. Must be more than min_instance_count.
  /// [metrics] The metrics that the component is scaled on.
  /// [minInstanceCount] The minimum amount of instances for this component. Must be less than max_instance_count.
  AppSpecServiceAutoscaling({
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

  factory AppSpecServiceAutoscaling.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAutoscaling(
      maxInstanceCount: map['maxInstanceCount'] as int,
      metrics: AppSpecServiceAutoscalingMetrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      minInstanceCount: map['minInstanceCount'] as int,
    );
  }
}

