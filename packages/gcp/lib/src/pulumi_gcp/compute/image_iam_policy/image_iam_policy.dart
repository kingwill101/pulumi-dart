import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Image. Each of these resources serves a different use case:
///
/// * `gcp.compute.ImageIamPolicy`: Authoritative. Sets the IAM policy for the image and replaces any existing policy already attached.
/// * `gcp.compute.ImageIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the image are preserved.
/// * `gcp.compute.ImageIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the image are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.ImageIamPolicy`: Retrieves the IAM policy for the image
///
/// > **Note:** `gcp.compute.ImageIamPolicy` **cannot** be used in conjunction with `gcp.compute.ImageIamBinding` and `gcp.compute.ImageIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.ImageIamBinding` resources **can be** used in conjunction with `gcp.compute.ImageIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.ImageIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.ImageIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.ImageIamMember
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
/// # IAM policy for Compute Engine Image
///
/// Three different resources help you manage your IAM policy for Compute Engine Image. Each of these resources serves a different use case:
///
/// * `gcp.compute.ImageIamPolicy`: Authoritative. Sets the IAM policy for the image and replaces any existing policy already attached.
/// * `gcp.compute.ImageIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the image are preserved.
/// * `gcp.compute.ImageIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the image are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.ImageIamPolicy`: Retrieves the IAM policy for the image
///
/// > **Note:** `gcp.compute.ImageIamPolicy` **cannot** be used in conjunction with `gcp.compute.ImageIamBinding` and `gcp.compute.ImageIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.ImageIamBinding` resources **can be** used in conjunction with `gcp.compute.ImageIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.ImageIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.ImageIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.ImageIamMember
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
/// * projects/{{project}}/global/images/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine image IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/imageIamPolicy:ImageIamPolicy editor "projects/{{project}}/global/images/{{image}} roles/compute.imageUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/imageIamPolicy:ImageIamPolicy editor "projects/{{project}}/global/images/{{image}} roles/compute.imageUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/imageIamPolicy:ImageIamPolicy editor projects/{{project}}/global/images/{{image}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ImageIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> image;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  ImageIamPolicy(
    String name, {
    ImageIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/imageIamPolicy:ImageIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.image = registerOutput<String>('image');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
