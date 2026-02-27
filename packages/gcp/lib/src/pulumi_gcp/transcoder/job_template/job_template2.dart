import 'package:pulumi/pulumi.dart';
import '../job_template_config/job_template_config.dart';
import 'job_template_args.dart';

/// Transcoding Job Template Resource
///
///
/// To get more information about JobTemplate, see:
///
/// * [API documentation](https://cloud.google.com/transcoder/docs/reference/rest/v1/projects.locations.jobTemplates)
/// * How-to Guides
/// * [Transcoder](https://cloud.google.com/transcoder/docs/)
///
/// ## Example Usage
///
/// ### Transcoder Job Template Basic
///
///
///
/// ### Transcoder Job Template Overlays
///
///
///
/// ### Transcoder Job Template Encryptions
///
///
///
/// ### Transcoder Job Template Pubsub
///
///
///
///
/// ## Import
///
/// JobTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/jobTemplates/{{job_template_id}}`
///
/// * `{{project}}/{{location}}/{{job_template_id}}`
///
/// * `{{location}}/{{job_template_id}}`
///
/// When using the `pulumi import` command, JobTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default projects/{{project}}/locations/{{location}}/jobTemplates/{{job_template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default {{project}}/{{location}}/{{job_template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default {{location}}/{{job_template_id}}
/// ```
class JobTemplate2 extends CustomResource {
  /// The configuration for this template.
  /// Structure is documented below.
  late final Output<JobTemplateConfig> config;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// ID to use for the Transcoding job template.
  late final Output<String> jobTemplateId;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the transcoding job template resource.
  late final Output<String> location;

  /// The resource name of the job template.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  JobTemplate2(
    String name, {
    JobTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:transcoder/jobTemplate:JobTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<JobTemplateConfig>('config');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.jobTemplateId = registerOutput<String>('jobTemplateId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
