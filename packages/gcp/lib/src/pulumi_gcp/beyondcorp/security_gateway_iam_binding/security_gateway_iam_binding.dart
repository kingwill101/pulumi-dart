import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_gateway_iam_binding_condition/security_gateway_iam_binding_condition.dart';
import 'security_gateway_iam_binding_args.dart';

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
/// $ pulumi import gcp:beyondcorp/securityGatewayIamBinding:SecurityGatewayIamBinding editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamBinding:SecurityGatewayIamBinding editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamBinding:SecurityGatewayIamBinding editor projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SecurityGatewayIamBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<SecurityGatewayIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.beyondcorp.SecurityGatewayIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> securityGatewayId;

  SecurityGatewayIamBinding(
    String name, {
    SecurityGatewayIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayIamBinding:SecurityGatewayIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<SecurityGatewayIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
  }
}
