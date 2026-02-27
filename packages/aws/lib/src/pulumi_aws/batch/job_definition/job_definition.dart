import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_definition_eks_properties/job_definition_eks_properties.dart';
import '../job_definition_retry_strategy/job_definition_retry_strategy.dart';
import '../job_definition_timeout/job_definition_timeout.dart';
import 'job_definition_args.dart';

/// Provides a Batch Job Definition resource.
///
/// ## Example Usage
///
/// ### Job definition of type container
///
///
///
/// ### Job definition of type multinode
///
///
///
/// ### Job Definition of type EKS
///
///
///
/// ### Fargate Platform Capability
///
///
///
/// ### Job definition of type container using `ecs_properties`
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the job definition.
///
///
/// Using `pulumi import`, import Batch Job Definition using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/jobDefinition:JobDefinition test arn:aws:batch:us-east-1:123456789012:job-definition/sample
/// ```
class JobDefinition extends pulumi.CustomResource {
  /// ARN of the job definition, includes revision (`:#`).
  late final pulumi.Output<String> arn;

  /// ARN without the revision number.
  late final pulumi.Output<String> arnPrefix;

  /// Valid [container properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  late final pulumi.Output<String?> containerProperties;

  /// When updating a job definition a new revision is created. This parameter determines if the previous version is `deregistered` (`INACTIVE`) or left  `ACTIVE`. Defaults to `true`.
  late final pulumi.Output<bool?> deregisterOnNewRevision;

  /// Valid [ECS properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  late final pulumi.Output<String?> ecsProperties;

  /// Valid eks properties. This parameter is only valid if the `type` parameter is `container`.
  late final pulumi.Output<JobDefinitionEksProperties?> eksProperties;

  /// Name of the job definition.
  late final pulumi.Output<String> name;

  /// Valid [node properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is required if the `type` parameter is `multinode`.
  late final pulumi.Output<String?> nodeProperties;

  /// Parameter substitution placeholders to set in the job definition.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Platform capabilities required by the job definition. If no value is specified, it defaults to `EC2`. To run the job on Fargate resources, specify `FARGATE`.
  late final pulumi.Output<List<String>?> platformCapabilities;

  /// Whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is `false`.
  late final pulumi.Output<bool?> propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Retry strategy to use for failed jobs that are submitted with this job definition. Maximum number of `retry_strategy` is `1`.  Defined below.
  late final pulumi.Output<JobDefinitionRetryStrategy?> retryStrategy;

  /// Revision of the job definition.
  late final pulumi.Output<int> revision;

  /// Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values `0` through `9999`.
  late final pulumi.Output<int?> schedulingPriority;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of `timeout` is `1`. Defined below.
  late final pulumi.Output<JobDefinitionTimeout?> timeout;

  /// Type of job definition. Must be `container` or `multinode`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  JobDefinition(
    String name, {
    JobDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:batch/jobDefinition:JobDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnPrefix = registerOutput<String>('arnPrefix');
    this.containerProperties = registerOutput<String?>('containerProperties');
    this.deregisterOnNewRevision =
        registerOutput<bool?>('deregisterOnNewRevision');
    this.ecsProperties = registerOutput<String?>('ecsProperties');
    this.eksProperties =
        registerOutput<JobDefinitionEksProperties?>('eksProperties');
    this.name = registerOutput<String>('name');
    this.nodeProperties = registerOutput<String?>('nodeProperties');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.platformCapabilities =
        registerOutput<List<String>?>('platformCapabilities');
    this.propagateTags = registerOutput<bool?>('propagateTags');
    this.region = registerOutput<String>('region');
    this.retryStrategy =
        registerOutput<JobDefinitionRetryStrategy?>('retryStrategy');
    this.revision = registerOutput<int>('revision');
    this.schedulingPriority = registerOutput<int?>('schedulingPriority');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeout = registerOutput<JobDefinitionTimeout?>('timeout');
    this.type = registerOutput<String>('type');
  }
}
