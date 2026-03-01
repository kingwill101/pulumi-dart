// ignore_for_file: unused_element, unnecessary_cast

/// Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.
class JobExecutionInfo {
  /// A mapping from each stage to the information about that stage.
  final Map<String, String>? stages;

  /// Creates a new [JobExecutionInfo].
  /// [stages] A mapping from each stage to the information about that stage.
  JobExecutionInfo({this.stages});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stages': ?stages};
  }

  factory JobExecutionInfo.fromMap(Map<String, dynamic> map) {
    return JobExecutionInfo(
      stages: map['stages'] == null
          ? null
          : (map['stages'] as Map).cast<String, String>(),
    );
  }
}
