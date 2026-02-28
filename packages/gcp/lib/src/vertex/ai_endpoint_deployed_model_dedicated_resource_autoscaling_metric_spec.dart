// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec {
  /// (Output)
  /// The resource metric name. Supported metrics: * For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final String? metricName;

  /// (Output)
  /// The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  final int? target;

  /// Creates a new [AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec].
  /// [metricName] (Output)
  /// [target] (Output)
  AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec({
    this.metricName,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec(
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      target: map['target'] == null ? null : map['target'] as int,
    );
  }
}
