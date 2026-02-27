import 'package:pulumi/pulumi.dart';
import 'region_network_firewall_policy_association_args.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about RegionNetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Association
///
///
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
///
/// * `{{project}}/{{region}}/{{firewall_policy}}/{{name}}`
///
/// * `{{region}}/{{firewall_policy}}/{{name}}`
///
/// * `{{project}}/{{firewall_policy}}/{{name}}`
///
/// * `{{firewall_policy}}/{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{region}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{region}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class RegionNetworkFirewallPolicyAssociation extends CustomResource {
  /// The target that the firewall policy is attached to.
  late final Output<String> attachmentTarget;

  /// The firewall policy of the resource.
  late final Output<String> firewallPolicy;

  /// The name for an association.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The location of this resource.
  late final Output<String> region;

  /// The short name of the firewall policy of the association.
  late final Output<String> shortName;

  RegionNetworkFirewallPolicyAssociation(
    String name, {
    RegionNetworkFirewallPolicyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attachmentTarget = registerOutput<String>('attachmentTarget');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.shortName = registerOutput<String>('shortName');
  }
}
