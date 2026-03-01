// ignore_for_file: unused_element, unnecessary_cast


class GetImagePipelineSchedule {
  /// Condition when the pipeline should trigger a new image build.
  final String pipelineExecutionStartCondition;
  /// Cron expression of how often the pipeline start condition is evaluated.
  final String scheduleExpression;

  /// Creates a new [GetImagePipelineSchedule].
  /// [pipelineExecutionStartCondition] Condition when the pipeline should trigger a new image build.
  /// [scheduleExpression] Cron expression of how often the pipeline start condition is evaluated.
  GetImagePipelineSchedule({
    required this.pipelineExecutionStartCondition,
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineExecutionStartCondition': pipelineExecutionStartCondition,
      'scheduleExpression': scheduleExpression,
    };
  }

  factory GetImagePipelineSchedule.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineSchedule(
      pipelineExecutionStartCondition: map['pipelineExecutionStartCondition'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}

