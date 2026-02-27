import 'package:pulumi/pulumi.dart' hide Config;
import 'job_config_response.dart';
import 'job_template_args.dart';

/// Creates a job template in the specified region.
class JobTemplate extends CustomResource {
  /// The configuration for this template.
  late final Output<JobConfigResponse> config;

  /// Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  late final Output<String> jobTemplateId;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  late final Output<String> name;
  late final Output<String> project;

  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:transcoder/v1:JobTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<JobConfigResponse>('config');
    this.jobTemplateId = registerOutput<String>('jobTemplateId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
