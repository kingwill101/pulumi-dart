import 'package:pulumi/pulumi.dart';
import 'ekm_connection_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Key Management Service EkmConnection. Each of these resources serves a different use case:
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Authoritative. Sets the IAM policy for the ekmconnection and replaces any existing policy already attached.
/// * `gcp.kms.EkmConnectionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the ekmconnection are preserved.
/// * `gcp.kms.EkmConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the ekmconnection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Retrieves the IAM policy for the ekmconnection
///
/// > **Note:** `gcp.kms.EkmConnectionIamPolicy` **cannot** be used in conjunction with `gcp.kms.EkmConnectionIamBinding` and `gcp.kms.EkmConnectionIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.kms.EkmConnectionIamBinding` resources **can be** used in conjunction with `gcp.kms.EkmConnectionIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.kms.EkmConnectionIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.kms.EkmConnectionIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.kms.EkmConnectionIamMember
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
/// # IAM policy for Cloud Key Management Service EkmConnection
///
/// Three different resources help you manage your IAM policy for Cloud Key Management Service EkmConnection. Each of these resources serves a different use case:
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Authoritative. Sets the IAM policy for the ekmconnection and replaces any existing policy already attached.
/// * `gcp.kms.EkmConnectionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the ekmconnection are preserved.
/// * `gcp.kms.EkmConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the ekmconnection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.kms.EkmConnectionIamPolicy`: Retrieves the IAM policy for the ekmconnection
///
/// > **Note:** `gcp.kms.EkmConnectionIamPolicy` **cannot** be used in conjunction with `gcp.kms.EkmConnectionIamBinding` and `gcp.kms.EkmConnectionIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.kms.EkmConnectionIamBinding` resources **can be** used in conjunction with `gcp.kms.EkmConnectionIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.kms.EkmConnectionIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.kms.EkmConnectionIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.kms.EkmConnectionIamMember
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
/// * projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Key Management Service ekmconnection IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnectionIamPolicy:EkmConnectionIamPolicy editor "projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnectionIamPolicy:EkmConnectionIamPolicy editor "projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnectionIamPolicy:EkmConnectionIamPolicy editor projects/{{project}}/locations/{{location}}/ekmConnections/{{ekm_connection}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EkmConnectionIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  EkmConnectionIamPolicy(
    String name, {
    EkmConnectionIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnectionIamPolicy:EkmConnectionIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
