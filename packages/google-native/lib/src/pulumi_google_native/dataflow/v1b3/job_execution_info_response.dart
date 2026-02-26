// ignore_for_file: unused_element, unnecessary_cast

/// Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.
class JobExecutionInfoResponse {
  /// A mapping from each stage to the information about that stage.
  final Map<String, String> stages;

  JobExecutionInfoResponse({
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stages'] = stages;
    return map;
  }

  factory JobExecutionInfoResponse.fromMap(Map<String, dynamic> map) {
    return JobExecutionInfoResponse(
      stages: (map['stages'] as Map).cast<String, String>(),
    );
  }
}
