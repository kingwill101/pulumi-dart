// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datalabeling_v1beta1_attempt_response.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_job_config_response.dart';

/// Result data returned by getEvaluationJob.
class GetEvaluationJobResult {
  /// Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  final String annotationSpecSet;

  /// Every time the evaluation job runs and an error occurs, the failed attempt is appended to this array.
  final List<GoogleCloudDatalabelingV1beta1AttemptResponse> attempts;

  /// Timestamp of when this evaluation job was created.
  final String createTime;

  /// Description of the job. The description can be up to 25,000 characters long.
  final String description;

  /// Configuration details for the evaluation job.
  final GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse
      evaluationJobConfig;

  /// Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  final bool labelMissingGroundTruth;

  /// The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  final String modelVersion;

  /// After you create a job, Data Labeling Service assigns a name to the job with the following format: "projects/{project_id}/evaluationJobs/ {evaluation_job_id}"
  final String name;

  /// Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  final String schedule;

  /// Describes the current state of the job.
  final String state;

  GetEvaluationJobResult({
    required this.annotationSpecSet,
    required this.attempts,
    required this.createTime,
    required this.description,
    required this.evaluationJobConfig,
    required this.labelMissingGroundTruth,
    required this.modelVersion,
    required this.name,
    required this.schedule,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSpecSet'] = annotationSpecSet;
    map['attempts'] = Input.encodeList<
        GoogleCloudDatalabelingV1beta1AttemptResponse,
        Map<String, dynamic>>(attempts, (value) => value.toMap());
    map['createTime'] = createTime;
    map['description'] = description;
    map['evaluationJobConfig'] = evaluationJobConfig.toMap();
    map['labelMissingGroundTruth'] = labelMissingGroundTruth;
    map['modelVersion'] = modelVersion;
    map['name'] = name;
    map['schedule'] = schedule;
    map['state'] = state;
    return map;
  }

  factory GetEvaluationJobResult.fromMap(Map<String, dynamic> map) {
    return GetEvaluationJobResult(
      annotationSpecSet: map['annotationSpecSet'] as String,
      attempts: Input.decodeList<GoogleCloudDatalabelingV1beta1AttemptResponse>(
          map['attempts'],
          (value) => GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      evaluationJobConfig:
          GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse.fromMap(
              (map['evaluationJobConfig'] as Map).cast<String, dynamic>()),
      labelMissingGroundTruth: map['labelMissingGroundTruth'] as bool,
      modelVersion: map['modelVersion'] as String,
      name: map['name'] as String,
      schedule: map['schedule'] as String,
      state: map['state'] as String,
    );
  }
}
