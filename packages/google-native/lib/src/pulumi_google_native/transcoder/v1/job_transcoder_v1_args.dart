// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';
import 'job_mode.dart';
import 'job_optimization.dart';

/// The set of arguments for Job.
class JobTranscoderV1Args {
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

  JobTranscoderV1Args({
    this.batchModePriority,
    this.config,
    this.inputUri,
    this.labels,
    this.location,
    this.mode,
    this.name,
    this.optimization,
    this.outputUri,
    this.project,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchModePriorityValue = batchModePriority;
    if (batchModePriorityValue != null) {
      map['batchModePriority'] = batchModePriorityValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final inputUriValue = inputUri;
    if (inputUriValue != null) {
      map['inputUri'] = inputUriValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = pulumi.Input.mapOptionalInputValue<JobMode, String>(
          modeValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optimizationValue = optimization;
    if (optimizationValue != null) {
      map['optimization'] =
          pulumi.Input.mapOptionalInputValue<JobOptimization, String>(
              optimizationValue, (value) => value.value);
    }
    final outputUriValue = outputUri;
    if (outputUriValue != null) {
      map['outputUri'] = outputUriValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    final ttlAfterCompletionDaysValue = ttlAfterCompletionDays;
    if (ttlAfterCompletionDaysValue != null) {
      map['ttlAfterCompletionDays'] = ttlAfterCompletionDaysValue;
    }
    return map;
  }

  factory JobTranscoderV1Args.fromMap(Map<String, dynamic> map) {
    return JobTranscoderV1Args(
      batchModePriority:
          pulumi.Input.asOptionalInput<int>(map['batchModePriority']),
      config: pulumi.Input.asOptionalInput<JobConfig>(map['config']),
      inputUri: pulumi.Input.asOptionalInput<String>(map['inputUri']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mode: pulumi.Input.asOptionalInput<JobMode>(map['mode']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      optimization:
          pulumi.Input.asOptionalInput<JobOptimization>(map['optimization']),
      outputUri: pulumi.Input.asOptionalInput<String>(map['outputUri']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateId: pulumi.Input.asOptionalInput<String>(map['templateId']),
      ttlAfterCompletionDays:
          pulumi.Input.asOptionalInput<int>(map['ttlAfterCompletionDays']),
    );
  }
}
