import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_association_args.dart';

/// An association for the OrganizationSecurityPolicy.
///
///
/// To get more information about OrganizationSecurityPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/organizationSecurityPolicies/addAssociation)
/// * How-to Guides
/// * [Associating a policy with the organization or folder](https://cloud.google.com/vpc/docs/using-firewall-policies#associate)
///
/// ## Example Usage
///
/// ### Organization Security Policy Association Basic
///
///
///
///
/// ## Import
///
/// OrganizationSecurityPolicyAssociation can be imported using any of these accepted formats:
///
/// * `{{policy_id}}/association/{{name}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicyAssociation:OrganizationSecurityPolicyAssociation default {{policy_id}}/association/{{name}}
/// ```
class OrganizationSecurityPolicyAssociation extends pulumi.CustomResource {
  /// The resource that the security policy is attached to.
  late final pulumi.Output<String> attachmentId;

  /// The display name of the security policy of the association.
  late final pulumi.Output<String> displayName;

  /// The name for an association.
  late final pulumi.Output<String> name;

  /// The security policy ID of the association.
  late final pulumi.Output<String> policyId;

  OrganizationSecurityPolicyAssociation(
    String name, {
    OrganizationSecurityPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyAssociation:OrganizationSecurityPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
  }
}
