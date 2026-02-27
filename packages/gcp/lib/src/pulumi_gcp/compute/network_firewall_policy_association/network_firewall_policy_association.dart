import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_association_args.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about NetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Network Firewall Policy Association
///
///
///
///
/// ## Import
///
/// NetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
///
/// * `{{project}}/{{firewall_policy}}/{{name}}`
///
/// * `{{firewall_policy}}/{{name}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class NetworkFirewallPolicyAssociation extends pulumi.CustomResource {
  /// The target that the firewall policy is attached to.
  late final pulumi.Output<String> attachmentTarget;

  /// The firewall policy of the resource.
  late final pulumi.Output<String> firewallPolicy;

  /// The name for an association.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The short name of the firewall policy of the association.
  late final pulumi.Output<String> shortName;

  NetworkFirewallPolicyAssociation(
    String name, {
    NetworkFirewallPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentTarget = registerOutput<String>('attachmentTarget');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.shortName = registerOutput<String>('shortName');
  }
}
