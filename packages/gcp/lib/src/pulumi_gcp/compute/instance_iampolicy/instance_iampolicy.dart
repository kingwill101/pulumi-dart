import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Instance. Each of these resources serves a different use case:
///
/// * `gcp.compute.InstanceIAMPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.compute.InstanceIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * `gcp.compute.InstanceIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.InstanceIAMPolicy`: Retrieves the IAM policy for the instance
///
/// > **Note:** `gcp.compute.InstanceIAMPolicy` **cannot** be used in conjunction with `gcp.compute.InstanceIAMBinding` and `gcp.compute.InstanceIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.InstanceIAMBinding` resources **can be** used in conjunction with `gcp.compute.InstanceIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.InstanceIAMPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceIAMBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceIAMMember
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
/// # IAM policy for Compute Engine Instance
///
/// Three different resources help you manage your IAM policy for Compute Engine Instance. Each of these resources serves a different use case:
///
/// * `gcp.compute.InstanceIAMPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.compute.InstanceIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * `gcp.compute.InstanceIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.InstanceIAMPolicy`: Retrieves the IAM policy for the instance
///
/// > **Note:** `gcp.compute.InstanceIAMPolicy` **cannot** be used in conjunction with `gcp.compute.InstanceIAMBinding` and `gcp.compute.InstanceIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.InstanceIAMBinding` resources **can be** used in conjunction with `gcp.compute.InstanceIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.InstanceIAMPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceIAMBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.InstanceIAMMember
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
/// * projects/{{project}}/zones/{{zone}}/instances/{{name}}
///
/// * {{project}}/{{zone}}/{{name}}
///
/// * {{zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine instance IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor "projects/{{project}}/zones/{{zone}}/instances/{{instance}} roles/compute.osLogin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor "projects/{{project}}/zones/{{zone}}/instances/{{instance}} roles/compute.osLogin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor projects/{{project}}/zones/{{zone}}/instances/{{instance}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceIAMPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> instanceName;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> zone;

  InstanceIAMPolicy(
    String name, {
    InstanceIAMPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceIAMPolicy:InstanceIAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.instanceName = registerOutput<String>('instanceName');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
