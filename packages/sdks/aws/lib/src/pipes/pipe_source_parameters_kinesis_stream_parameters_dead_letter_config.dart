// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersKinesisStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final pulumi.Input<String>? arn;

  /// Creates a new [PipeSourceParametersKinesisStreamParametersDeadLetterConfig].
  /// [arn] ARN of this pipe.
  const PipeSourceParametersKinesisStreamParametersDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersKinesisStreamParametersDeadLetterConfig(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

