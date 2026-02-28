// ignore_for_file: unused_element, unnecessary_cast

/// The detail of a container execution. It contains the job names of the lifecycle of a container execution.
class GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse {
  /// The names of the previously failed CustomJob for the main container executions. The list includes the all attempts in chronological order.
  final List<String> failedMainJobs;

  /// The names of the previously failed CustomJob for the pre-caching-check container executions. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events. The list includes the all attempts in chronological order.
  final List<String> failedPreCachingCheckJobs;

  /// The name of the CustomJob for the main container execution.
  final String mainJob;

  /// The name of the CustomJob for the pre-caching-check container execution. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events.
  final String preCachingCheckJob;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse].
  /// [failedMainJobs] The names of the previously failed CustomJob for the main container executions. The list includes the all attempts in chronological order.
  /// [failedPreCachingCheckJobs] The names of the previously failed CustomJob for the pre-caching-check container executions. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events. The list includes the all attempts in chronological order.
  /// [mainJob] The name of the CustomJob for the main container execution.
  /// [preCachingCheckJob] The name of the CustomJob for the pre-caching-check container execution. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events.
  GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse({
    required this.failedMainJobs,
    required this.failedPreCachingCheckJobs,
    required this.mainJob,
    required this.preCachingCheckJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failedMainJobs'] = failedMainJobs;
    map['failedPreCachingCheckJobs'] = failedPreCachingCheckJobs;
    map['mainJob'] = mainJob;
    map['preCachingCheckJob'] = preCachingCheckJob;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse(
      failedMainJobs: (map['failedMainJobs'] as List).cast<String>(),
      failedPreCachingCheckJobs:
          (map['failedPreCachingCheckJobs'] as List).cast<String>(),
      mainJob: map['mainJob'] as String,
      preCachingCheckJob: map['preCachingCheckJob'] as String,
    );
  }
}
