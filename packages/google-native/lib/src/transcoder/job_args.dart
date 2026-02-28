// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';
import 'job_mode.dart';
import 'job_optimization.dart';

/// {@template pulumi_transcoder_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_transcoder_v1_job_args_doc}
class JobArgs {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  final pulumi.Input<int>? batchModePriority;
  /// The configuration for this job.
  final pulumi.Input<JobConfig>? config;
  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String>? inputUri;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  final pulumi.Input<JobMode>? mode;
  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  final pulumi.Input<String>? name;
  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  final pulumi.Input<JobOptimization>? optimization;
  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String>? outputUri;
  final pulumi.Input<String>? project;
  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  final pulumi.Input<String>? templateId;
  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  final pulumi.Input<int>? ttlAfterCompletionDays;

  /// Creates a new [JobArgs].
  /// [batchModePriority] The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  /// [config] The configuration for this job.
  /// [inputUri] Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [location] Optional.
  /// [mode] The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  /// [name] The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  /// [optimization] Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  /// [outputUri] Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [project] Optional.
  /// [templateId] Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  /// [ttlAfterCompletionDays] Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  JobArgs({
    int? batchModePriority,
    JobConfig? config,
    String? inputUri,
    Map<String, String>? labels,
    String? location,
    JobMode? mode,
    String? name,
    JobOptimization? optimization,
    String? outputUri,
    String? project,
    String? templateId,
    int? ttlAfterCompletionDays,
  }) :
      batchModePriority = pulumi.Input.asOptionalInput<int>(batchModePriority),
      config = pulumi.Input.asOptionalInput<JobConfig>(config),
      inputUri = pulumi.Input.asOptionalInput<String>(inputUri),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mode = pulumi.Input.asOptionalInput<JobMode>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimization = pulumi.Input.asOptionalInput<JobOptimization>(optimization),
      outputUri = pulumi.Input.asOptionalInput<String>(outputUri),
      project = pulumi.Input.asOptionalInput<String>(project),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      ttlAfterCompletionDays = pulumi.Input.asOptionalInput<int>(ttlAfterCompletionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchModePriority': ?batchModePriority,
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'inputUri': ?inputUri,
      'labels': ?labels,
      'location': ?location,
      'mode': ?pulumi.Input.mapOptionalInputValue<JobMode, String>(mode, (value) => value.value),
      'name': ?name,
      'optimization': ?pulumi.Input.mapOptionalInputValue<JobOptimization, String>(optimization, (value) => value.value),
      'outputUri': ?outputUri,
      'project': ?project,
      'templateId': ?templateId,
      'ttlAfterCompletionDays': ?ttlAfterCompletionDays,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      batchModePriority: map['batchModePriority'] == null ? null : map['batchModePriority'] as int,
      config: map['config'] == null ? null : JobConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      inputUri: map['inputUri'] == null ? null : map['inputUri'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mode: map['mode'] == null ? null : JobMode.fromValue(map['mode'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      optimization: map['optimization'] == null ? null : JobOptimization.fromValue(map['optimization'] as String),
      outputUri: map['outputUri'] == null ? null : map['outputUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      ttlAfterCompletionDays: map['ttlAfterCompletionDays'] == null ? null : map['ttlAfterCompletionDays'] as int,
    );
  }
}

