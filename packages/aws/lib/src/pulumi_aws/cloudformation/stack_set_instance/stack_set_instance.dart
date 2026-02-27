import 'package:pulumi/pulumi.dart';
import '../stack_set_instance_deployment_targets/stack_set_instance_deployment_targets.dart';
import '../stack_set_instance_operation_preferences/stack_set_instance_operation_preferences.dart';
import '../stack_set_instance_stack_instance_summary/stack_set_instance_stack_instance_summary.dart';
import 'stack_set_instance_args.dart';

/// Manages a CloudFormation StackSet Instance. Instances are managed in the account and region of the StackSet after the target account permissions have been configured. Additional information about StackSets can be found in the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html).
///
/// > **NOTE:** All target accounts must have an IAM Role created that matches the name of the execution role configured in the StackSet (the `execution_role_name` argument in the `aws.cloudformation.StackSet` resource) in a trust relationship with the administrative account or administration IAM Role. The execution role must have appropriate permissions to manage resources defined in the template along with those required for StackSets to operate. See the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) for more details.
///
/// > **NOTE:** To retain the Stack during resource destroy, ensure `retain_stack` has been set to `true` in the state first. This must be completed _before_ a deployment that would destroy the resource.
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
/// Import CloudFormation StackSet Instances that target AWS Organizational Units using the StackSet name, a slash (`/`) separated list of organizational unit IDs, and target AWS Region separated by commas (`,`). For example:
///
///
/// Import CloudFormation StackSet Instances when acting a delegated administrator in a member account using the StackSet name, target AWS account ID or slash (`/`) separated list of organizational unit IDs, target AWS Region and `call_as` value separated by commas (`,`). For example:
///
///
/// Using `pulumi import`, import CloudFormation StackSet Instances that target an AWS Account ID using the StackSet name, target AWS account ID, and target AWS Region separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,123456789012,us-east-1
/// ```
///
/// Using `pulumi import`, import CloudFormation StackSet Instances that target AWS Organizational Units using the StackSet name, a slash (`/`) separated list of organizational unit IDs, and target AWS Region separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,ou-sdas-123123123/ou-sdas-789789789,us-east-1
/// ```
///
/// Using `pulumi import`, import CloudFormation StackSet Instances when acting a delegated administrator in a member account using the StackSet name, target AWS account ID or slash (`/`) separated list of organizational unit IDs, target AWS Region and `call_as` value separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,ou-sdas-123123123/ou-sdas-789789789,us-east-1,DELEGATED_ADMIN
/// ```
class StackSetInstance extends CustomResource {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  late final Output<String> accountId;

  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  late final Output<String?> callAs;

  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  late final Output<StackSetInstanceDeploymentTargets?> deploymentTargets;

  /// Preferences for how AWS CloudFormation performs a stack set operation.
  late final Output<StackSetInstanceOperationPreferences?> operationPreferences;

  /// Organizational unit ID in which the stack is deployed.
  late final Output<String> organizationalUnitId;

  /// Key-value map of input parameters to override from the StackSet for this Instance.
  late final Output<Map<String, String>?> parameterOverrides;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  late final Output<String> region;

  /// During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  late final Output<bool?> retainStack;

  /// Stack identifier.
  late final Output<String> stackId;

  /// List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set. See `stack_instance_summaries`.
  late final Output<List<StackSetInstanceStackInstanceSummary>>
      stackInstanceSummaries;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  late final Output<String> stackSetInstanceRegion;

  /// Name of the StackSet.
  late final Output<String> stackSetName;

  StackSetInstance(
    String name, {
    StackSetInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stackSetInstance:StackSetInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.callAs = registerOutput<String?>('callAs');
    this.deploymentTargets =
        registerOutput<StackSetInstanceDeploymentTargets?>('deploymentTargets');
    this.operationPreferences =
        registerOutput<StackSetInstanceOperationPreferences?>(
            'operationPreferences');
    this.organizationalUnitId = registerOutput<String>('organizationalUnitId');
    this.parameterOverrides =
        registerOutput<Map<String, String>?>('parameterOverrides');
    this.region = registerOutput<String>('region');
    this.retainStack = registerOutput<bool?>('retainStack');
    this.stackId = registerOutput<String>('stackId');
    this.stackInstanceSummaries =
        registerOutput<List<StackSetInstanceStackInstanceSummary>>(
            'stackInstanceSummaries');
    this.stackSetInstanceRegion =
        registerOutput<String>('stackSetInstanceRegion');
    this.stackSetName = registerOutput<String>('stackSetName');
  }
}
