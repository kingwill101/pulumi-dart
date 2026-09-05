// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersBatchJobParametersRetryStrategy {
  /// The number of times to move a job to the RUNNABLE status. If the value of attempts is greater than one, the job is retried on failure the same number of attempts as the value. Maximum value of 10.
  final pulumi.Input<int?>? attempts;

  /// Creates a new [PipeTargetParametersBatchJobParametersRetryStrategy].
  /// [attempts] The number of times to move a job to the RUNNABLE status. If the value of attempts is greater than one, the job is retried on failure the same number of attempts as the value. Maximum value of 10.
  const PipeTargetParametersBatchJobParametersRetryStrategy({
    this.attempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': ?attempts,
    };
  }

  factory PipeTargetParametersBatchJobParametersRetryStrategy.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersRetryStrategy(
      attempts: (() { final guardedValue = map['attempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
