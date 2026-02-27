import 'package:pulumi/pulumi.dart' as pulumi;
import '../gateway_iam_member_condition/gateway_iam_member_condition.dart';
import 'gateway_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.GatewayIamPolicy`: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * `gcp.apigateway.GatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * `gcp.apigateway.GatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.GatewayIamPolicy`: Retrieves the IAM policy for the gateway
///
/// > **Note:** `gcp.apigateway.GatewayIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.GatewayIamBinding` and `gcp.apigateway.GatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.apigateway.GatewayIamBinding` resources **can be** used in conjunction with `gcp.apigateway.GatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.GatewayIamPolicy
///
///
///
/// ## gcp.apigateway.GatewayIamBinding
///
///
///
/// ## gcp.apigateway.GatewayIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for API Gateway Gateway
///
/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.GatewayIamPolicy`: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * `gcp.apigateway.GatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * `gcp.apigateway.GatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.GatewayIamPolicy`: Retrieves the IAM policy for the gateway
///
/// > **Note:** `gcp.apigateway.GatewayIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.GatewayIamBinding` and `gcp.apigateway.GatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.apigateway.GatewayIamBinding` resources **can be** used in conjunction with `gcp.apigateway.GatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.GatewayIamPolicy
///
///
///
/// ## gcp.apigateway.GatewayIamBinding
///
///
///
/// ## gcp.apigateway.GatewayIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
///
/// * {{project}}/{{region}}/{{gateway}}
///
/// * {{region}}/{{gateway}}
///
/// * {{gateway}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// API Gateway gateway IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GatewayIamMember extends pulumi.CustomResource {
  late final pulumi.Output<GatewayIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> gateway;

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
  late final pulumi.Output<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the gateway for the API.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  /// The role that should be applied. Only one
  /// `gcp.apigateway.GatewayIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  GatewayIamMember(
    String name, {
    GatewayIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gatewayIamMember:GatewayIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<GatewayIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.gateway = registerOutput<String>('gateway');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
