// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateStopCondition {
  /// Source of the condition. One of `none`, `aws:cloudwatch:alarm`.
  final pulumi.Input<String> source;
  /// ARN of the CloudWatch alarm. Required if the source is a CloudWatch alarm.
  final pulumi.Input<String>? value;

  /// Creates a new [ExperimentTemplateStopCondition].
  /// [source] Source of the condition. One of `none`, `aws:cloudwatch:alarm`.
  /// [value] ARN of the CloudWatch alarm. Required if the source is a CloudWatch alarm.
  ExperimentTemplateStopCondition({
    required this.source,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
      'value': ?value,
    };
  }

  factory ExperimentTemplateStopCondition.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateStopCondition(
      source: (map['source'] as String).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

