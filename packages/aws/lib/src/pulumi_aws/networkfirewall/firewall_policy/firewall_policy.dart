import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_policy_encryption_configuration/firewall_policy_encryption_configuration.dart';
import '../firewall_policy_firewall_policy/firewall_policy_firewall_policy.dart';
import 'firewall_policy_args.dart';

/// Provides an AWS Network Firewall Firewall Policy Resource
///
/// ## Example Usage
///
///
///
/// ## Policy with a HOME_NET Override
///
///
///
/// ## Policy with a Custom Action for Stateless Inspection
///
///
///
/// ## Policy with Active Threat Defense in Action Order
///
///
///
/// ## Policy with Active Threat Defense in Strict Order
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Policies using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewallPolicy:FirewallPolicy example arn:aws:network-firewall:us-west-1:123456789012:firewall-policy/example
/// ```
class FirewallPolicy extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the firewall policy.
  late final pulumi.Output<String> arn;

  /// A friendly description of the firewall policy.
  late final pulumi.Output<String?> description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<FirewallPolicyEncryptionConfiguration?>
      encryptionConfiguration;

  /// A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  late final pulumi.Output<FirewallPolicyFirewallPolicy> firewallPolicy;

  /// A friendly name of the firewall policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A string token used when updating a firewall policy.
  late final pulumi.Output<String> updateToken;

  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.encryptionConfiguration =
        registerOutput<FirewallPolicyEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.firewallPolicy =
        registerOutput<FirewallPolicyFirewallPolicy>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateToken = registerOutput<String>('updateToken');
  }
}
