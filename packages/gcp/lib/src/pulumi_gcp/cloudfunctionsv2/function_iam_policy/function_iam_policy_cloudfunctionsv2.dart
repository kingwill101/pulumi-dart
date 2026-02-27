import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_iam_policy_cloudfunctionsv2_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * `gcp.cloudfunctionsv2.FunctionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved.
/// * `gcp.cloudfunctionsv2.FunctionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Retrieves the IAM policy for the function
///
/// > **Note:** `gcp.cloudfunctionsv2.FunctionIamPolicy` **cannot** be used in conjunction with `gcp.cloudfunctionsv2.FunctionIamBinding` and `gcp.cloudfunctionsv2.FunctionIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudfunctionsv2.FunctionIamBinding` resources **can be** used in conjunction with `gcp.cloudfunctionsv2.FunctionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamPolicy
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamBinding
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Functions (2nd gen) function
///
/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * `gcp.cloudfunctionsv2.FunctionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved.
/// * `gcp.cloudfunctionsv2.FunctionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Retrieves the IAM policy for the function
///
/// > **Note:** `gcp.cloudfunctionsv2.FunctionIamPolicy` **cannot** be used in conjunction with `gcp.cloudfunctionsv2.FunctionIamBinding` and `gcp.cloudfunctionsv2.FunctionIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudfunctionsv2.FunctionIamBinding` resources **can be** used in conjunction with `gcp.cloudfunctionsv2.FunctionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamPolicy
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamBinding
///
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
///
/// * {{project}}/{{location}}/{{cloud_function}}
///
/// * {{location}}/{{cloud_function}}
///
/// * {{cloud_function}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Functions (2nd gen) function IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FunctionIamPolicyCloudfunctionsv2 extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> cloudFunction;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  FunctionIamPolicyCloudfunctionsv2(
    String name, {
    FunctionIamPolicyCloudfunctionsv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudFunction = registerOutput<String>('cloudFunction');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
