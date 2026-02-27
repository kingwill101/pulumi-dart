import 'package:pulumi/pulumi.dart';
import 'instance_template_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine InstanceTemplate. Each of these resources serves a different use case:
///
/// * `gcp.compute.InstanceTemplateIamPolicy`: Authoritative. Sets the IAM policy for the instancetemplate and replaces any existing policy already attached.
/// * `gcp.compute.InstanceTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instancetemplate are preserved.
/// * `gcp.compute.InstanceTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instancetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.InstanceTemplateIamPolicy`: Retrieves the IAM policy for the instancetemplate
///
/// > **Note:** `gcp.compute.InstanceTemplateIamPolicy` **cannot** be used in conjunction with `gcp.compute.InstanceTemplateIamBinding` and `gcp.compute.InstanceTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.InstanceTemplateIamBinding` resources **can be** used in conjunction with `gcp.compute.InstanceTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.InstanceTemplateIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceTemplateIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceTemplateIamMember
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
/// # IAM policy for Compute Engine InstanceTemplate
///
/// Three different resources help you manage your IAM policy for Compute Engine InstanceTemplate. Each of these resources serves a different use case:
///
/// * `gcp.compute.InstanceTemplateIamPolicy`: Authoritative. Sets the IAM policy for the instancetemplate and replaces any existing policy already attached.
/// * `gcp.compute.InstanceTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instancetemplate are preserved.
/// * `gcp.compute.InstanceTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instancetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.InstanceTemplateIamPolicy`: Retrieves the IAM policy for the instancetemplate
///
/// > **Note:** `gcp.compute.InstanceTemplateIamPolicy` **cannot** be used in conjunction with `gcp.compute.InstanceTemplateIamBinding` and `gcp.compute.InstanceTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.InstanceTemplateIamBinding` resources **can be** used in conjunction with `gcp.compute.InstanceTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.InstanceTemplateIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceTemplateIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceTemplateIamMember
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
/// * projects/{{project}}/global/instanceTemplates/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine instancetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplateIamPolicy:InstanceTemplateIamPolicy editor "projects/{{project}}/global/instanceTemplates/{{instance_template}} roles/compute.instanceAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplateIamPolicy:InstanceTemplateIamPolicy editor "projects/{{project}}/global/instanceTemplates/{{instance_template}} roles/compute.instanceAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplateIamPolicy:InstanceTemplateIamPolicy editor projects/{{project}}/global/instanceTemplates/{{instance_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceTemplateIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  InstanceTemplateIamPolicy(
    String name, {
    InstanceTemplateIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceTemplateIamPolicy:InstanceTemplateIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
