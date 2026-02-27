import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_cloudformation_args.dart';

/// Provides a CloudFormation Stack resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudformation Stacks using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stack:Stack stack networking-stack
/// ```
class StackCloudformation extends pulumi.CustomResource {
  /// A list of capabilities.
  /// Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, or `CAPABILITY_AUTO_EXPAND`
  late final pulumi.Output<List<String>?> capabilities;

  /// Set to true to disable rollback of the stack if stack creation failed.
  /// Conflicts with `on_failure`.
  late final pulumi.Output<bool?> disableRollback;

  /// The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  late final pulumi.Output<String?> iamRoleArn;

  /// Stack name.
  late final pulumi.Output<String> name;

  /// A list of SNS topic ARNs to publish stack related events.
  late final pulumi.Output<List<String>?> notificationArns;

  /// Action to be taken if stack creation fails. This must be
  /// one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. Conflicts with `disable_rollback`.
  late final pulumi.Output<String?> onFailure;

  /// A map of outputs from the stack.
  late final pulumi.Output<Map<String, String>> outputs;

  /// A map of Parameter structures that specify input parameters for the stack.
  late final pulumi.Output<Map<String, String>> parameters;

  /// Structure containing the stack policy body.
  /// Conflicts w/ `policy_url`.
  late final pulumi.Output<String> policyBody;

  /// Location of a file containing the stack policy.
  /// Conflicts w/ `policy_body`.
  late final pulumi.Output<String?> policyUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of resource tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Structure containing the template body (max size: 51,200 bytes).
  late final pulumi.Output<String> templateBody;

  /// Location of a file containing the template body (max size: 460,800 bytes).
  late final pulumi.Output<String?> templateUrl;

  /// The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  late final pulumi.Output<int?> timeoutInMinutes;

  StackCloudformation(
    String name, {
    StackCloudformationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stack:Stack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capabilities = registerOutput<List<String>?>('capabilities');
    this.disableRollback = registerOutput<bool?>('disableRollback');
    this.iamRoleArn = registerOutput<String?>('iamRoleArn');
    this.name = registerOutput<String>('name');
    this.notificationArns = registerOutput<List<String>?>('notificationArns');
    this.onFailure = registerOutput<String?>('onFailure');
    this.outputs = registerOutput<Map<String, String>>('outputs');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.policyBody = registerOutput<String>('policyBody');
    this.policyUrl = registerOutput<String?>('policyUrl');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateBody = registerOutput<String>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.timeoutInMinutes = registerOutput<int?>('timeoutInMinutes');
  }
}
