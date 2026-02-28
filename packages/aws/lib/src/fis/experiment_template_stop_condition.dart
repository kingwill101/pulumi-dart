// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateStopCondition {
  /// Source of the condition. One of `none`, `aws:cloudwatch:alarm`.
  final String source;

  /// ARN of the CloudWatch alarm. Required if the source is a CloudWatch alarm.
  final String? value;

  /// Creates a new [ExperimentTemplateStopCondition].
  /// [source] Source of the condition. One of `none`, `aws:cloudwatch:alarm`.
  /// [value] ARN of the CloudWatch alarm. Required if the source is a CloudWatch alarm.
  ExperimentTemplateStopCondition({
    required this.source,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ExperimentTemplateStopCondition.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateStopCondition(
      source: map['source'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
