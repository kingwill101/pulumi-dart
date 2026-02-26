// ignore_for_file: unused_element, unnecessary_cast

/// The detailed info for a custom job executor.
class GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse {
  /// The names of the previously failed CustomJob. The list includes the all attempts in chronological order.
  final List<String> failedJobs;

  /// The name of the CustomJob.
  final String job;

  GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse({
    required this.failedJobs,
    required this.job,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failedJobs'] = failedJobs;
    map['job'] = job;
    return map;
  }

  factory GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse(
      failedJobs: (map['failedJobs'] as List).cast<String>(),
      job: map['job'] as String,
    );
  }
}
