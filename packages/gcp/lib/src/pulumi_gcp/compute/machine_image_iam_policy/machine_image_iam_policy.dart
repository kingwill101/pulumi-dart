import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine MachineImage. Each of these resources serves a different use case:
///
/// * `gcp.compute.MachineImageIamPolicy`: Authoritative. Sets the IAM policy for the machineimage and replaces any existing policy already attached.
/// * `gcp.compute.MachineImageIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the machineimage are preserved.
/// * `gcp.compute.MachineImageIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the machineimage are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.MachineImageIamPolicy`: Retrieves the IAM policy for the machineimage
///
/// > **Note:** `gcp.compute.MachineImageIamPolicy` **cannot** be used in conjunction with `gcp.compute.MachineImageIamBinding` and `gcp.compute.MachineImageIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.MachineImageIamBinding` resources **can be** used in conjunction with `gcp.compute.MachineImageIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.MachineImageIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.MachineImageIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.MachineImageIamMember
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
/// # IAM policy for Compute Engine MachineImage
///
/// Three different resources help you manage your IAM policy for Compute Engine MachineImage. Each of these resources serves a different use case:
///
/// * `gcp.compute.MachineImageIamPolicy`: Authoritative. Sets the IAM policy for the machineimage and replaces any existing policy already attached.
/// * `gcp.compute.MachineImageIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the machineimage are preserved.
/// * `gcp.compute.MachineImageIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the machineimage are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.MachineImageIamPolicy`: Retrieves the IAM policy for the machineimage
///
/// > **Note:** `gcp.compute.MachineImageIamPolicy` **cannot** be used in conjunction with `gcp.compute.MachineImageIamBinding` and `gcp.compute.MachineImageIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.MachineImageIamBinding` resources **can be** used in conjunction with `gcp.compute.MachineImageIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.MachineImageIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.MachineImageIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.MachineImageIamMember
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
/// * projects/{{project}}/global/machineImages/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine machineimage IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamPolicy:MachineImageIamPolicy editor "projects/{{project}}/global/machineImages/{{machine_image}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamPolicy:MachineImageIamPolicy editor "projects/{{project}}/global/machineImages/{{machine_image}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamPolicy:MachineImageIamPolicy editor projects/{{project}}/global/machineImages/{{machine_image}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MachineImageIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> machineImage;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  MachineImageIamPolicy(
    String name, {
    MachineImageIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/machineImageIamPolicy:MachineImageIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.machineImage = registerOutput<String>('machineImage');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
