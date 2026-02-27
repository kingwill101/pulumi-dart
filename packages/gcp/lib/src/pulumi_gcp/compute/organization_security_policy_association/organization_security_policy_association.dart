import 'package:pulumi/pulumi.dart';
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
class OrganizationSecurityPolicyAssociation extends CustomResource {
  /// The resource that the security policy is attached to.
  late final Output<String> attachmentId;

  /// The display name of the security policy of the association.
  late final Output<String> displayName;

  /// The name for an association.
  late final Output<String> name;

  /// The security policy ID of the association.
  late final Output<String> policyId;

  OrganizationSecurityPolicyAssociation(
    String name, {
    OrganizationSecurityPolicyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyAssociation:OrganizationSecurityPolicyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
  }
}
