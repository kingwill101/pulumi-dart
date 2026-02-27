import 'package:pulumi/pulumi.dart';
import '../job_template_job_template_data/job_template_job_template_data.dart';
import 'job_template_args.dart';

/// Manages an EMR Containers (EMR on EKS) Job Template.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS job templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrcontainers/jobTemplate:JobTemplate example a1b2c3d4e5f6g7h8i9j10k11l
/// ```
class JobTemplate extends CustomResource {
  /// ARN of the job template.
  late final Output<String> arn;

  /// The job template data which holds values of StartJobRun API request.
  late final Output<JobTemplateJobTemplateData> jobTemplateData;

  /// The KMS key ARN used to encrypt the job template.
  late final Output<String?> kmsKeyArn;

  /// The specified name of the job template.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emrcontainers/jobTemplate:JobTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.jobTemplateData =
        registerOutput<JobTemplateJobTemplateData>('jobTemplateData');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
