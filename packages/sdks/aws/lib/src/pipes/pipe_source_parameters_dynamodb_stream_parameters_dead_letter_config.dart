// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersDynamodbStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final pulumi.Input<String>? arn;

  /// Creates a new [PipeSourceParametersDynamodbStreamParametersDeadLetterConfig].
  /// [arn] ARN of this pipe.
  PipeSourceParametersDynamodbStreamParametersDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory PipeSourceParametersDynamodbStreamParametersDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersDynamodbStreamParametersDeadLetterConfig(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

