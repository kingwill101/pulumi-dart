// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersDynamodbStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final String? arn;

  /// Creates a new [PipeSourceParametersDynamodbStreamParametersDeadLetterConfig].
  /// [arn] ARN of this pipe.
  PipeSourceParametersDynamodbStreamParametersDeadLetterConfig({this.arn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn};
  }

  factory PipeSourceParametersDynamodbStreamParametersDeadLetterConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeSourceParametersDynamodbStreamParametersDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
