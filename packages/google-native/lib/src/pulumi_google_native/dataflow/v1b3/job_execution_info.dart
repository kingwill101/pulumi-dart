// ignore_for_file: unused_element, unnecessary_cast

/// Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.
class JobExecutionInfo {
  /// A mapping from each stage to the information about that stage.
  final Map<String, String>? stages;

  JobExecutionInfo({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = stagesValue;
    }
    return map;
  }

  factory JobExecutionInfo.fromMap(Map<String, dynamic> map) {
    return JobExecutionInfo(
      stages: map['stages'] == null
          ? null
          : (map['stages'] as Map).cast<String, String>(),
    );
  }
}
