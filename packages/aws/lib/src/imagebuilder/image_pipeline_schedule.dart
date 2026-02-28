// ignore_for_file: unused_element, unnecessary_cast

class ImagePipelineSchedule {
  /// Condition when the pipeline should trigger a new image build. Valid values are `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE` and `EXPRESSION_MATCH_ONLY`. Defaults to `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE`.
  final String? pipelineExecutionStartCondition;

  /// Cron expression of how often the pipeline start condition is evaluated. For example, `cron(0 0 * * ? *)` is evaluated every day at midnight UTC. Configurations using the five field syntax that was previously accepted by the API, such as `cron(0 0 * * *)`, must be updated to the six field syntax. For more information, see the [Image Builder User Guide](https://docs.aws.amazon.com/imagebuilder/latest/userguide/cron-expressions.html).
  ///
  /// The following arguments are optional:
  final String scheduleExpression;

  /// The timezone that applies to the scheduling expression. For example, "Etc/UTC", "America/Los_Angeles" in the [IANA timezone format](https://www.joda.org/joda-time/timezones.html). If not specified this defaults to UTC.
  final String? timezone;

  /// Creates a new [ImagePipelineSchedule].
  /// [pipelineExecutionStartCondition] Condition when the pipeline should trigger a new image build. Valid values are `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE` and `EXPRESSION_MATCH_ONLY`. Defaults to `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE`.
  /// [scheduleExpression] Cron expression of how often the pipeline start condition is evaluated. For example, `cron(0 0 * * ? *)` is evaluated every day at midnight UTC. Configurations using the five field syntax that was previously accepted by the API, such as `cron(0 0 * * *)`, must be updated to the six field syntax. For more information, see the [Image Builder User Guide](https://docs.aws.amazon.com/imagebuilder/latest/userguide/cron-expressions.html).
  /// [timezone] The timezone that applies to the scheduling expression. For example, "Etc/UTC", "America/Los_Angeles" in the [IANA timezone format](https://www.joda.org/joda-time/timezones.html). If not specified this defaults to UTC.
  ImagePipelineSchedule({
    this.pipelineExecutionStartCondition,
    required this.scheduleExpression,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pipelineExecutionStartConditionValue =
        pipelineExecutionStartCondition;
    if (pipelineExecutionStartConditionValue != null) {
      map['pipelineExecutionStartCondition'] =
          pipelineExecutionStartConditionValue;
    }
    map['scheduleExpression'] = scheduleExpression;
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    return map;
  }

  factory ImagePipelineSchedule.fromMap(Map<String, dynamic> map) {
    return ImagePipelineSchedule(
      pipelineExecutionStartCondition:
          map['pipelineExecutionStartCondition'] == null
              ? null
              : map['pipelineExecutionStartCondition'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}
