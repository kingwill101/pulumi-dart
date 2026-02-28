// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_response.dart';
import 'status_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  final int batchModePriority;

  /// The configuration for this job.
  final JobConfigResponse config;

  /// The time the job was created.
  final String createTime;

  /// The time the transcoding finished.
  final String endTime;

  /// An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  final StatusResponse error;

  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String inputUri;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  final Map<String, String> labels;

  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  final String mode;

  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  final String name;

  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  final String optimization;

  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String outputUri;

  /// The time the transcoding started.
  final String startTime;

  /// The current state of the job.
  final String state;

  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  final String templateId;

  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  final int ttlAfterCompletionDays;

  /// Creates a new [GetJobResult].
  /// [batchModePriority] The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  /// [config] The configuration for this job.
  /// [createTime] The time the job was created.
  /// [endTime] The time the transcoding finished.
  /// [error] An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  /// [inputUri] Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [mode] The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  /// [name] The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  /// [optimization] Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  /// [outputUri] Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [startTime] The time the transcoding started.
  /// [state] The current state of the job.
  /// [templateId] Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  /// [ttlAfterCompletionDays] Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  GetJobResult({
    required this.batchModePriority,
    required this.config,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.inputUri,
    required this.labels,
    required this.mode,
    required this.name,
    required this.optimization,
    required this.outputUri,
    required this.startTime,
    required this.state,
    required this.templateId,
    required this.ttlAfterCompletionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchModePriority'] = batchModePriority;
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['inputUri'] = inputUri;
    map['labels'] = labels;
    map['mode'] = mode;
    map['name'] = name;
    map['optimization'] = optimization;
    map['outputUri'] = outputUri;
    map['startTime'] = startTime;
    map['state'] = state;
    map['templateId'] = templateId;
    map['ttlAfterCompletionDays'] = ttlAfterCompletionDays;
    return map;
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      batchModePriority: map['batchModePriority'] as int,
      config: JobConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error:
          StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      inputUri: map['inputUri'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mode: map['mode'] as String,
      name: map['name'] as String,
      optimization: map['optimization'] as String,
      outputUri: map['outputUri'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      templateId: map['templateId'] as String,
      ttlAfterCompletionDays: map['ttlAfterCompletionDays'] as int,
    );
  }
}
