// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersKinesisStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final String? arn;

  PipeSourceParametersKinesisStreamParametersDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    return map;
  }

  factory PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersKinesisStreamParametersDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
