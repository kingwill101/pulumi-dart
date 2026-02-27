import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_args.dart';

/// Organization security policies are used to control incoming/outgoing traffic.
///
///
/// To get more information about OrganizationSecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/organizationSecurityPolicies)
/// * How-to Guides
/// * [Creating a firewall policy](https://cloud.google.com/vpc/docs/using-firewall-policies#create-policy)
///
/// ## Example Usage
///
/// ### Organization Security Policy Basic
///
///
///
///
/// ## Import
///
/// OrganizationSecurityPolicy can be imported using any of these accepted formats:
///
/// * `locations/global/securityPolicies/{{policy_id}}`
///
/// * `{{policy_id}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default locations/global/securityPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default {{policy_id}}
/// ```
class OrganizationSecurityPolicy extends pulumi.CustomResource {
  /// A textual description for the organization security policy.
  late final pulumi.Output<String?> description;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  late final pulumi.Output<String?> displayName;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  late final pulumi.Output<String> parent;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> policyId;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  late final pulumi.Output<String?> shortName;

  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  late final pulumi.Output<String> type;

  OrganizationSecurityPolicy(
    String name, {
    OrganizationSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.parent = registerOutput<String>('parent');
    this.policyId = registerOutput<String>('policyId');
    this.shortName = registerOutput<String?>('shortName');
    this.type = registerOutput<String>('type');
  }
}
