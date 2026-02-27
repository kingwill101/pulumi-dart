import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Certificate Authority Service CertificateTemplate. Each of these resources serves a different use case:
///
/// * `gcp.certificateauthority.CertificateTemplateIamPolicy`: Authoritative. Sets the IAM policy for the certificatetemplate and replaces any existing policy already attached.
/// * `gcp.certificateauthority.CertificateTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the certificatetemplate are preserved.
/// * `gcp.certificateauthority.CertificateTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the certificatetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.certificateauthority.CertificateTemplateIamPolicy`: Retrieves the IAM policy for the certificatetemplate
///
/// > **Note:** `gcp.certificateauthority.CertificateTemplateIamPolicy` **cannot** be used in conjunction with `gcp.certificateauthority.CertificateTemplateIamBinding` and `gcp.certificateauthority.CertificateTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.certificateauthority.CertificateTemplateIamBinding` resources **can be** used in conjunction with `gcp.certificateauthority.CertificateTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamMember
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
/// # IAM policy for Certificate Authority Service CertificateTemplate
///
/// Three different resources help you manage your IAM policy for Certificate Authority Service CertificateTemplate. Each of these resources serves a different use case:
///
/// * `gcp.certificateauthority.CertificateTemplateIamPolicy`: Authoritative. Sets the IAM policy for the certificatetemplate and replaces any existing policy already attached.
/// * `gcp.certificateauthority.CertificateTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the certificatetemplate are preserved.
/// * `gcp.certificateauthority.CertificateTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the certificatetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.certificateauthority.CertificateTemplateIamPolicy`: Retrieves the IAM policy for the certificatetemplate
///
/// > **Note:** `gcp.certificateauthority.CertificateTemplateIamPolicy` **cannot** be used in conjunction with `gcp.certificateauthority.CertificateTemplateIamBinding` and `gcp.certificateauthority.CertificateTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.certificateauthority.CertificateTemplateIamBinding` resources **can be** used in conjunction with `gcp.certificateauthority.CertificateTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CertificateTemplateIamMember
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
/// * projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Certificate Authority Service certificatetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamPolicy:CertificateTemplateIamPolicy editor "projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}} roles/privateca.templateUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamPolicy:CertificateTemplateIamPolicy editor "projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}} roles/privateca.templateUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamPolicy:CertificateTemplateIamPolicy editor projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class CertificateTemplateIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> certificateTemplate;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  CertificateTemplateIamPolicy(
    String name, {
    CertificateTemplateIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/certificateTemplateIamPolicy:CertificateTemplateIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateTemplate = registerOutput<String>('certificateTemplate');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
