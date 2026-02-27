import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_args.dart';

/// Three different resources help you manage IAM policies on bigtable instances. Each of these resources serves a different use case:
///
/// * `gcp.bigtable.InstanceIamPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * `gcp.bigtable.InstanceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * `gcp.bigtable.InstanceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// > **Note:** `gcp.bigtable.InstanceIamPolicy` **cannot** be used in conjunction with `gcp.bigtable.InstanceIamBinding` and `gcp.bigtable.InstanceIamMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the instance as `gcp.bigtable.InstanceIamPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.bigtable.InstanceIamBinding` resources **can be** used in conjunction with `gcp.bigtable.InstanceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.bigtable.InstanceIamPolicy
///
///
///
/// ## gcp.bigtable.InstanceIamBinding
///
///
///
/// ## gcp.bigtable.InstanceIamMember
///
///
///
/// ## gcp.bigtable.InstanceIamPolicy
///
///
///
/// ## gcp.bigtable.InstanceIamBinding
///
///
///
/// ## gcp.bigtable.InstanceIamMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `instance` identifier of the Bigtable Instance resource only. For example:
///
/// * `"projects/{project}/instances/{instance}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/instances/{instance}"
///
/// to = google_bigtable_instance_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:bigtable/instanceIamPolicy:InstanceIamPolicy default projects/{project}/instances/{instance}
/// ```
class InstanceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the instances's IAM policy.
  late final pulumi.Output<String> etag;

  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  late final pulumi.Output<String> instance;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
