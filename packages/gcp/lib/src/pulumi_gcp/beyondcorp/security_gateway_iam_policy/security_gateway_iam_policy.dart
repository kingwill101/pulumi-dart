import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGateway. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Authoritative. Sets the IAM policy for the securitygateway and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the securitygateway are preserved.
/// * `gcp.beyondcorp.SecurityGatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the securitygateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Retrieves the IAM policy for the securitygateway
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayIamBinding` and `gcp.beyondcorp.SecurityGatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BeyondCorp SecurityGateway
///
/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGateway. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Authoritative. Sets the IAM policy for the securitygateway and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the securitygateway are preserved.
/// * `gcp.beyondcorp.SecurityGatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the securitygateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Retrieves the IAM policy for the securitygateway
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayIamBinding` and `gcp.beyondcorp.SecurityGatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
///
/// * {{project}}/{{location}}/{{security_gateway_id}}
///
/// * {{location}}/{{security_gateway_id}}
///
/// * {{security_gateway_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BeyondCorp securitygateway IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SecurityGatewayIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> securityGatewayId;

  SecurityGatewayIamPolicy(
    String name, {
    SecurityGatewayIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
  }
}
