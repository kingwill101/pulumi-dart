import 'package:pulumi/pulumi.dart' as pulumi;
import '../stack_instances_deployment_targets/stack_instances_deployment_targets.dart';
import '../stack_instances_operation_preferences/stack_instances_operation_preferences.dart';
import '../stack_instances_stack_instance_summary/stack_instances_stack_instance_summary.dart';
import 'stack_instances_args.dart';

/// Manages CloudFormation stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. Additional information about stacks can be found in the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html).
///
/// > **NOTE:** This resource will manage all stack instances for the specified `stack_set_name`. If you create stack instances outside of Terraform or import existing infrastructure, ensure that your configuration includes all accounts and regions where stack instances exist for the stack set. Failing to include all accounts and regions will cause Terraform to continuously report differences between your configuration and the actual infrastructure.
///
/// > **NOTE:** All target accounts must have an IAM Role created that matches the name of the execution role configured in the stack (the `execution_role_name` argument in the `aws.cloudformation.StackSet` resource) in a trust relationship with the administrative account or administration IAM Role. The execution role must have appropriate permissions to manage resources defined in the template along with those required for stacks to operate. See the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) for more details.
///
/// > **NOTE:** To retain the Stack during Terraform resource destroy, ensure `retain_stacks = true` has been successfully applied into the Terraform state first. This must be completed _before_ an apply that would destroy the resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Example IAM Setup in Target Account
///
///
///
/// ### Example Deployment across Organizations account
///
///
///
/// ## Import
///
/// Import CloudFormation stack instances that target OUs, using the stack set name, `call_as`, and "OU" separated by commas (`,`). For example:
///
///
/// Using `pulumi import`, import CloudFormation stack instances using the stack set name and `call_as` separated by commas (`,`). If you are importing a stack instance targeting OUs, see the example below. For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackInstances:StackInstances example example,SELF
/// ```
///
/// Using `pulumi import`, Import CloudFormation stack instances that target OUs, using the stack set name, `call_as`, and "OU" separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackInstances:StackInstances example example,SELF,OU
/// ```
class StackInstances extends pulumi.CustomResource {
  /// Accounts where you want to create stack instances in the specified `regions`. You can specify either `accounts` or `deployment_targets`, but not both.
  late final pulumi.Output<List<String>> accounts;

  /// Whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  late final pulumi.Output<String?> callAs;

  /// AWS Organizations accounts for which to create stack instances in the `regions`. stack sets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for most of this argument. See deployment_targets below.
  late final pulumi.Output<StackInstancesDeploymentTargets?> deploymentTargets;

  /// Preferences for how AWS CloudFormation performs a stack set operation. See operation_preferences below.
  late final pulumi.Output<StackInstancesOperationPreferences?>
      operationPreferences;

  /// Key-value map of input parameters to override from the stack set for these instances. This argument's drift detection is limited to the first account and region since each instance can have unique parameters.
  late final pulumi.Output<Map<String, String>?> parameterOverrides;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Regions where you want to create stack instances in the specified `accounts`.
  late final pulumi.Output<List<String>> regions;

  /// Whether to remove the stack instances from the stack set, but not delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. To retain the stack, ensure `retain_stacks = true` has been successfully applied _before_ an apply that would destroy the resource. Defaults to `false`.
  late final pulumi.Output<bool?> retainStacks;

  /// List of stack instances created from an organizational unit deployment target. This may not always be set depending on whether CloudFormation returns summaries for your configuration. See `stack_instance_summaries`.
  late final pulumi.Output<List<StackInstancesStackInstanceSummary>>
      stackInstanceSummaries;

  /// Name or unique ID of the stack set that the stack instance is associated with.
  late final pulumi.Output<String> stackSetId;

  /// Name of the stack set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> stackSetName;

  StackInstances(
    String name, {
    StackInstancesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stackInstances:StackInstances',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accounts = registerOutput<List<String>>('accounts');
    this.callAs = registerOutput<String?>('callAs');
    this.deploymentTargets =
        registerOutput<StackInstancesDeploymentTargets?>('deploymentTargets');
    this.operationPreferences =
        registerOutput<StackInstancesOperationPreferences?>(
            'operationPreferences');
    this.parameterOverrides =
        registerOutput<Map<String, String>?>('parameterOverrides');
    this.region = registerOutput<String>('region');
    this.regions = registerOutput<List<String>>('regions');
    this.retainStacks = registerOutput<bool?>('retainStacks');
    this.stackInstanceSummaries =
        registerOutput<List<StackInstancesStackInstanceSummary>>(
            'stackInstanceSummaries');
    this.stackSetId = registerOutput<String>('stackSetId');
    this.stackSetName = registerOutput<String>('stackSetName');
  }
}
