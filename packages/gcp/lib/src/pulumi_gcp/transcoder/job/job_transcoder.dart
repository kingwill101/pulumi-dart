import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_config/job_config.dart';
import 'job_transcoder_args.dart';

/// Transcoding Job Resource
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/transcoder/docs/reference/rest/v1/projects.locations.jobs)
/// * How-to Guides
/// * [Transcoder](https://cloud.google.com/transcoder/docs/)
///
/// ## Example Usage
///
/// ### Transcoder Job Basic
///
///
///
/// ### Transcoder Job Pubsub
///
///
///
/// ### Transcoder Job Encryptions
///
///
///
/// ### Transcoder Job Overlays
///
///
///
/// ### Transcoder Job Manifests
///
///
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/job:Job default {{name}}
/// ```
class JobTranscoder extends pulumi.CustomResource {
  /// The configuration for this template.
  /// Structure is documented below.
  late final pulumi.Output<JobConfig> config;

  /// The time the job was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The time the transcoding finished.
  late final pulumi.Output<String> endTime;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the transcoding job resource.
  late final pulumi.Output<String> location;

  /// The resource name of the job.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The time the transcoding started.
  late final pulumi.Output<String> startTime;

  /// The current state of the job.
  late final pulumi.Output<String> state;

  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  late final pulumi.Output<String> templateId;

  JobTranscoder(
    String name, {
    JobTranscoderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:transcoder/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<JobConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endTime = registerOutput<String>('endTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.templateId = registerOutput<String>('templateId');
  }
}
