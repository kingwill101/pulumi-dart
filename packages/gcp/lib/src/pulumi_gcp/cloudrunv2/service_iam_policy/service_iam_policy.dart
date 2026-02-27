import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) Service. Each of these resources serves a different use case:
///
/// * `gcp.cloudrunv2.ServiceIamPolicy`: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * `gcp.cloudrunv2.ServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * `gcp.cloudrunv2.ServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudrunv2.ServiceIamPolicy`: Retrieves the IAM policy for the service
///
/// > **Note:** `gcp.cloudrunv2.ServiceIamPolicy` **cannot** be used in conjunction with `gcp.cloudrunv2.ServiceIamBinding` and `gcp.cloudrunv2.ServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudrunv2.ServiceIamBinding` resources **can be** used in conjunction with `gcp.cloudrunv2.ServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudrunv2.ServiceIamPolicy
///
///
///
/// ## gcp.cloudrunv2.ServiceIamBinding
///
///
///
/// ## gcp.cloudrunv2.ServiceIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Run (v2 API) Service
///
/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) Service. Each of these resources serves a different use case:
///
/// * `gcp.cloudrunv2.ServiceIamPolicy`: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * `gcp.cloudrunv2.ServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * `gcp.cloudrunv2.ServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudrunv2.ServiceIamPolicy`: Retrieves the IAM policy for the service
///
/// > **Note:** `gcp.cloudrunv2.ServiceIamPolicy` **cannot** be used in conjunction with `gcp.cloudrunv2.ServiceIamBinding` and `gcp.cloudrunv2.ServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudrunv2.ServiceIamBinding` resources **can be** used in conjunction with `gcp.cloudrunv2.ServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudrunv2.ServiceIamPolicy
///
///
///
/// ## gcp.cloudrunv2.ServiceIamBinding
///
///
///
/// ## gcp.cloudrunv2.ServiceIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Run (v2 API) service IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ServiceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location of the cloud run service Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  ServiceIamPolicy(
    String name, {
    ServiceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
