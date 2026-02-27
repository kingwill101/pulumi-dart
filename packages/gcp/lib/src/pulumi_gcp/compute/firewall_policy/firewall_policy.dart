import 'package:pulumi/pulumi.dart';
import 'firewall_policy_args.dart';

/// Hierarchical firewall policy rules let you create and enforce a consistent firewall policy across your organization. Rules can explicitly allow or deny connections or delegate evaluation to lower level policies. Policies can be created within organizations or folders.
///
/// This resource should be generally be used with `gcp.compute.FirewallPolicyAssociation` and `gcp.compute.FirewallPolicyRule`
///
/// For more information see the [official documentation](https://cloud.google.com/vpc/docs/firewall-policies)
///
///
/// To get more information about FirewallPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies)
///
/// ## Example Usage
///
/// ### Firewall Policy
///
///
///
///
/// ## Import
///
/// FirewallPolicy can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FirewallPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicy:FirewallPolicy default locations/global/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicy:FirewallPolicy default {{name}}
/// ```
class FirewallPolicy extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final Output<String> fingerprint;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> firewallPolicyId;

  /// Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
  late final Output<String> name;

  /// The parent of the firewall policy.
  late final Output<String> parent;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final Output<int> ruleTupleCount;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  /// This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> shortName;

  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicy:FirewallPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.firewallPolicyId = registerOutput<String>('firewallPolicyId');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.shortName = registerOutput<String>('shortName');
  }
}
