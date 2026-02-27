import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * `gcp.colab.RuntimeTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved.
/// * `gcp.colab.RuntimeTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Retrieves the IAM policy for the runtimetemplate
///
/// > **Note:** `gcp.colab.RuntimeTemplateIamPolicy` **cannot** be used in conjunction with `gcp.colab.RuntimeTemplateIamBinding` and `gcp.colab.RuntimeTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.colab.RuntimeTemplateIamBinding` resources **can be** used in conjunction with `gcp.colab.RuntimeTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.colab.RuntimeTemplateIamPolicy
///
///
///
/// ## gcp.colab.RuntimeTemplateIamBinding
///
///
///
/// ## gcp.colab.RuntimeTemplateIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Colab Enterprise RuntimeTemplate
///
/// Three different resources help you manage your IAM policy for Colab Enterprise RuntimeTemplate. Each of these resources serves a different use case:
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Authoritative. Sets the IAM policy for the runtimetemplate and replaces any existing policy already attached.
/// * `gcp.colab.RuntimeTemplateIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the runtimetemplate are preserved.
/// * `gcp.colab.RuntimeTemplateIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the runtimetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.colab.RuntimeTemplateIamPolicy`: Retrieves the IAM policy for the runtimetemplate
///
/// > **Note:** `gcp.colab.RuntimeTemplateIamPolicy` **cannot** be used in conjunction with `gcp.colab.RuntimeTemplateIamBinding` and `gcp.colab.RuntimeTemplateIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.colab.RuntimeTemplateIamBinding` resources **can be** used in conjunction with `gcp.colab.RuntimeTemplateIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.colab.RuntimeTemplateIamPolicy
///
///
///
/// ## gcp.colab.RuntimeTemplateIamBinding
///
///
///
/// ## gcp.colab.RuntimeTemplateIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
///
/// * {{project}}/{{location}}/{{runtime_template}}
///
/// * {{location}}/{{runtime_template}}
///
/// * {{runtime_template}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Colab Enterprise runtimetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy editor "projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy editor projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{runtime_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RuntimeTemplateIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final pulumi.Output<String> runtimeTemplate;

  RuntimeTemplateIamPolicy(
    String name, {
    RuntimeTemplateIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplateIamPolicy:RuntimeTemplateIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.runtimeTemplate = registerOutput<String>('runtimeTemplate');
  }
}
