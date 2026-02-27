import 'package:pulumi/pulumi.dart';
import 'resource_policy_args6.dart';

/// Provides an AWS Network Firewall Resource Policy Resource for a rule group or firewall policy.
///
/// ## Example Usage
///
/// ### For a Firewall Policy resource
///
///
///
/// ### For a Rule Group resource
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Resource Policies using the `resource arn`. For example:
/// ```sh
/// $ pulumi import aws:networkfirewall/resourcePolicy:ResourcePolicy example arn:aws:network-firewall:us-west-1:123456789012:stateful-rulegroup/example
/// ```
class ResourcePolicy6 extends CustomResource {
  /// JSON formatted policy document that controls access to the Network Firewall resource. The policy must be provided **without whitespaces**.  We recommend using jsonencode for formatting as seen in the examples above. For more details, including available policy statement Actions, see the [Policy](https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_PutResourcePolicy.html#API_PutResourcePolicy_RequestSyntax) parameter in the AWS API documentation.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the rule group or firewall policy.
  late final Output<String> resourceArn;

  ResourcePolicy6(
    String name, {
    ResourcePolicyArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
