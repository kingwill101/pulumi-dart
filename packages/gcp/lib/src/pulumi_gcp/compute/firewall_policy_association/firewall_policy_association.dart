import 'package:pulumi/pulumi.dart';
import 'firewall_policy_association_args.dart';

/// Allows associating hierarchical firewall policies with the target where they are applied. This allows creating policies and rules in a different location than they are applied.
/// For more information on applying hierarchical firewall policies see the [official documentation](https://cloud.google.com/firewall/docs/firewall-policies#managing_hierarchical_firewall_policy_resources)
///
///
/// To get more information about FirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Firewall Policy Association
///
///
///
/// ## Import
///
/// FirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
///
/// * `{{firewall_policy}}/{{name}}`
///
/// When using the `pulumi import` command, FirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation default locations/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class FirewallPolicyAssociation extends CustomResource {
  /// The target that the firewall policy is attached to.
  late final Output<String> attachmentTarget;

  /// The firewall policy of the resource.
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the `create_before_destroy` life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  late final Output<String> firewallPolicy;

  /// The name for an association.
  late final Output<String> name;

  /// The short name of the firewall policy of the association.
  late final Output<String> shortName;

  FirewallPolicyAssociation(
    String name, {
    FirewallPolicyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attachmentTarget = registerOutput<String>('attachmentTarget');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.shortName = registerOutput<String>('shortName');
  }
}
