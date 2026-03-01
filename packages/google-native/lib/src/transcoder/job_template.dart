import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_response.dart';
import 'job_template_args.dart';

/// Creates a job template in the specified region.
class JobTemplate extends pulumi.CustomResource {
  /// The configuration for this template.
  late final pulumi.Output<JobConfigResponse> config;

  /// Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  late final pulumi.Output<String> jobTemplateId;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [JobTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTemplate]. {@macro pulumi_transcoder_v1_job_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:transcoder/v1:JobTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.config = registerOutput<JobConfigResponse>('config');
    this.jobTemplateId = registerOutput<String>('jobTemplateId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
