import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iambinding_condition/instance_iambinding_condition_spanner.dart';
import 'instance_iambinding_spanner_args.dart';

/// Three different resources help you manage your IAM policy for a Spanner instance. Each of these resources serves a different use case:
///
/// * `gcp.spanner.InstanceIAMPolicy`: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
///
/// > **Warning:** It's entirely possibly to lock yourself out of your instance using `gcp.spanner.InstanceIAMPolicy`. Any permissions granted by default will be removed unless you include them in your config.
///
/// * `gcp.spanner.InstanceIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * `gcp.spanner.InstanceIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// > **Note:** `gcp.spanner.InstanceIAMPolicy` **cannot** be used in conjunction with `gcp.spanner.InstanceIAMBinding` and `gcp.spanner.InstanceIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.spanner.InstanceIAMBinding` resources **can be** used in conjunction with `gcp.spanner.InstanceIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.spanner.InstanceIAMPolicy
///
///
///
/// ## gcp.spanner.InstanceIAMBinding
///
///
///
/// ## gcp.spanner.InstanceIAMMember
///
///
///
/// ## gcp.spanner.InstanceIAMBinding
///
///
///
/// ## gcp.spanner.InstanceIAMMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Spanner Instances resource . For example:
///
/// * `{{project}}/{{instance}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{project}}/{{instance}}
///
/// to = google_spanner_instance_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceIAMBinding:InstanceIAMBinding default {{project}}/{{instance}}
/// ```
class InstanceIAMBindingSpanner extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIAMBindingConditionSpanner?> condition;

  /// (Computed) The etag of the instance's IAM policy.
  late final pulumi.Output<String> etag;

  /// The name of the instance.
  late final pulumi.Output<String> instance;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **principal:{principal}**: Federated single identity. For example, principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/subject/ns/NAMESPACE/sa/SERVICEACCOUNT
  /// * **principalSet:{principalSet}**: Federated identity group. For example, principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/namespace/NAMESPACE
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.spanner.InstanceIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  InstanceIAMBindingSpanner(
    String name, {
    InstanceIAMBindingSpannerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceIAMBinding:InstanceIAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<InstanceIAMBindingConditionSpanner?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
