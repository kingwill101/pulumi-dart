import 'package:pulumi/pulumi.dart';
import '../compute_environment_compute_resources/compute_environment_compute_resources.dart';
import '../compute_environment_eks_configuration/compute_environment_eks_configuration.dart';
import '../compute_environment_update_policy/compute_environment_update_policy.dart';
import 'compute_environment_args.dart';

/// Creates a AWS Batch compute environment. Compute environments contain the Amazon ECS container instances that are used to run containerized batch jobs.
///
/// For information about AWS Batch, see [What is AWS Batch?](http://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html) .
/// For information about compute environment, see [Compute Environments](http://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html) .
///
/// > **Note:** To prevent a race condition during environment deletion, make sure to set `depends_on` to the related `aws.iam.RolePolicyAttachment`;
/// otherwise, the policy may be destroyed too soon and the compute environment will then get stuck in the `DELETING` state, see [Troubleshooting AWS Batch](http://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html) .
///
/// ## Example Usage
///
/// ### EC2 Type
///
///
///
/// ### Fargate Type
///
///
///
/// ### Setting Update Policy
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the compute environment.
///
///
/// Using `pulumi import`, import AWS Batch compute using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/computeEnvironment:ComputeEnvironment sample sample
/// ```
///
/// [1]: http://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html
/// [2]: http://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
/// [3]: http://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html
class ComputeEnvironment extends CustomResource {
  /// The Amazon Resource Name (ARN) of the compute environment.
  late final Output<String> arn;

  /// Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  late final Output<ComputeEnvironmentComputeResources> computeResources;

  /// The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment.
  late final Output<String> ecsClusterArn;

  /// Details for the Amazon EKS cluster that supports the compute environment. See details below.
  late final Output<ComputeEnvironmentEksConfiguration?> eksConfiguration;

  /// The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique compute environment name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  late final Output<String> serviceRole;

  /// The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  late final Output<String?> state;

  /// The current status of the compute environment (for example, CREATING or VALID).
  late final Output<String> status;

  /// A short, human-readable string to provide additional details about the current status of the compute environment.
  late final Output<String> statusReason;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  late final Output<String> type;

  /// Specifies the infrastructure update policy for the compute environment. See details below.
  late final Output<ComputeEnvironmentUpdatePolicy> updatePolicy;

  ComputeEnvironment(
    String name, {
    ComputeEnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:batch/computeEnvironment:ComputeEnvironment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeResources =
        registerOutput<ComputeEnvironmentComputeResources>('computeResources');
    this.ecsClusterArn = registerOutput<String>('ecsClusterArn');
    this.eksConfiguration =
        registerOutput<ComputeEnvironmentEksConfiguration?>('eksConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.state = registerOutput<String?>('state');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.updatePolicy =
        registerOutput<ComputeEnvironmentUpdatePolicy>('updatePolicy');
  }
}
