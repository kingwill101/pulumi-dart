// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_stage_on_failure_condition/pipeline_stage_on_failure_condition.dart';
import '../pipeline_stage_on_failure_retry_configuration/pipeline_stage_on_failure_retry_configuration.dart';

class PipelineStageOnFailure {
  /// The conditions that are failure conditions. Defined as a <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span> block below.
  final PipelineStageOnFailureCondition? condition;

  /// The conditions that are configured as failure conditions. Possible values are `ROLLBACK`,  `FAIL`, `RETRY` and `SKIP`.
  final String? result;

  /// The retry configuration specifies automatic retry for a failed stage, along with the configured retry mode. Defined as a <span pulumi-lang-nodejs="`retryConfiguration`" pulumi-lang-dotnet="`RetryConfiguration`" pulumi-lang-go="`retryConfiguration`" pulumi-lang-python="`retry_configuration`" pulumi-lang-yaml="`retryConfiguration`" pulumi-lang-java="`retryConfiguration`">`retry_configuration`</span> block below.
  final PipelineStageOnFailureRetryConfiguration? retryConfiguration;

  PipelineStageOnFailure({
    this.condition,
    this.result,
    this.retryConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    final resultValue = result;
    if (resultValue != null) {
      map['result'] = resultValue;
    }
    final retryConfigurationValue = retryConfiguration;
    if (retryConfigurationValue != null) {
      map['retryConfiguration'] = retryConfigurationValue.toMap();
    }
    return map;
  }

  factory PipelineStageOnFailure.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailure(
      condition: map['condition'] == null
          ? null
          : PipelineStageOnFailureCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      result: map['result'] == null ? null : map['result'] as String,
      retryConfiguration: map['retryConfiguration'] == null
          ? null
          : PipelineStageOnFailureRetryConfiguration.fromMap(
              (map['retryConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
