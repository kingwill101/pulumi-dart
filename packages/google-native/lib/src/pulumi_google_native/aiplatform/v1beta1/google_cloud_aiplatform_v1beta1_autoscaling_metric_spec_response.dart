// ignore_for_file: unused_element, unnecessary_cast

/// The metric specification that defines the target resource utilization (CPU utilization, accelerator's duty cycle, and so on) for calculating the desired replica count.
class GoogleCloudAiplatformV1beta1AutoscalingMetricSpecResponse {
  /// The resource metric name. Supported metrics: * For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final String metricName;

  /// The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  final int target;

  GoogleCloudAiplatformV1beta1AutoscalingMetricSpecResponse({
    required this.metricName,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricName'] = metricName;
    map['target'] = target;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1AutoscalingMetricSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1AutoscalingMetricSpecResponse(
      metricName: map['metricName'] as String,
      target: map['target'] as int,
    );
  }
}
