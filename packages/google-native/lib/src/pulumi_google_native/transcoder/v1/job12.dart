import 'package:pulumi/pulumi.dart';
import 'job_args12.dart';
import 'job_config_response.dart';
import 'status_response28.dart';

/// Creates a job in the specified region.
class Job12 extends CustomResource {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  late final Output<int> batchModePriority;

  /// The configuration for this job.
  late final Output<JobConfigResponse> config;

  /// The time the job was created.
  late final Output<String> createTime;

  /// The time the transcoding finished.
  late final Output<String> endTime;

  /// An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  late final Output<StatusResponse28> error;

  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  late final Output<String> inputUri;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  late final Output<String> mode;

  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  late final Output<String> name;

  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  late final Output<String> optimization;

  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  late final Output<String> outputUri;
  late final Output<String> project;

  /// The time the transcoding started.
  late final Output<String> startTime;

  /// The current state of the job.
  late final Output<String> state;

  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  late final Output<String> templateId;

  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  late final Output<int> ttlAfterCompletionDays;

  Job12(
    String name, {
    JobArgs12? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:transcoder/v1:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.batchModePriority = registerOutput<int>('batchModePriority');
    this.config = registerOutput<JobConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<StatusResponse28>('error');
    this.inputUri = registerOutput<String>('inputUri');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.optimization = registerOutput<String>('optimization');
    this.outputUri = registerOutput<String>('outputUri');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.templateId = registerOutput<String>('templateId');
    this.ttlAfterCompletionDays = registerOutput<int>('ttlAfterCompletionDays');
  }
}
