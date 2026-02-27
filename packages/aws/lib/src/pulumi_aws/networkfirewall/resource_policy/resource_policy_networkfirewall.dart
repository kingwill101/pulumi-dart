import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_networkfirewall_args.dart';

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
class ResourcePolicyNetworkfirewall extends pulumi.CustomResource {
  /// JSON formatted policy document that controls access to the Network Firewall resource. The policy must be provided **without whitespaces**.  We recommend using jsonencode for formatting as seen in the examples above. For more details, including available policy statement Actions, see the [Policy](https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_PutResourcePolicy.html#API_PutResourcePolicy_RequestSyntax) parameter in the AWS API documentation.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the rule group or firewall policy.
  late final pulumi.Output<String> resourceArn;

  ResourcePolicyNetworkfirewall(
    String name, {
    ResourcePolicyNetworkfirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
