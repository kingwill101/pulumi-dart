// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersKinesisStreamParametersDeadLetterConfig {
  /// ARN of this pipe.
  final pulumi.Input<String>? arn;

  /// Creates a new [PipeSourceParametersKinesisStreamParametersDeadLetterConfig].
  /// [arn] ARN of this pipe.
  PipeSourceParametersKinesisStreamParametersDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersKinesisStreamParametersDeadLetterConfig(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
    );
  }
}

