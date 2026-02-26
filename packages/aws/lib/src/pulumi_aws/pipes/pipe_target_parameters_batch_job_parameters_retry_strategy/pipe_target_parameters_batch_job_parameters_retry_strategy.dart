// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersBatchJobParametersRetryStrategy {
  /// The number of times to move a job to the RUNNABLE status. If the value of attempts is greater than one, the job is retried on failure the same number of attempts as the value. Maximum value of 10.
  final int? attempts;

  PipeTargetParametersBatchJobParametersRetryStrategy({
    this.attempts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attemptsValue = attempts;
    if (attemptsValue != null) {
      map['attempts'] = attemptsValue;
    }
    return map;
  }

  factory PipeTargetParametersBatchJobParametersRetryStrategy.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersRetryStrategy(
      attempts: map['attempts'] == null ? null : map['attempts'] as int,
    );
  }
}
