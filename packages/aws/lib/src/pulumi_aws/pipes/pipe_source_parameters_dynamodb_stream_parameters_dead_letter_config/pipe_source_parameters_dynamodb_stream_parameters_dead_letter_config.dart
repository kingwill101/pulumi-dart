// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersDynamodbStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final String? arn;

  PipeSourceParametersDynamodbStreamParametersDeadLetterConfig({
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

  factory PipeSourceParametersDynamodbStreamParametersDeadLetterConfig.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersDynamodbStreamParametersDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
