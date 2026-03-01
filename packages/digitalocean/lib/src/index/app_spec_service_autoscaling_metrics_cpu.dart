// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceAutoscalingMetricsCpu {
  /// The average target CPU utilization for the component.
  final int percent;

  /// Creates a new [AppSpecServiceAutoscalingMetricsCpu].
  /// [percent] The average target CPU utilization for the component.
  AppSpecServiceAutoscalingMetricsCpu({
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
    };
  }

  factory AppSpecServiceAutoscalingMetricsCpu.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAutoscalingMetricsCpu(
      percent: map['percent'] as int,
    );
  }
}

