import 'package:pulumi/pulumi.dart' as pulumi;
import '../iammember_condition/iammember_condition_serviceaccount.dart';
import 'iammember_serviceaccount_iammember_args.dart';

/// When managing IAM roles, you can treat a service account either as a resource or as an identity. This resource is to add iam policy bindings to a service account resource, such as allowing the members to run operations as or modify the service account. To configure permissions for a service account on other GCP resources, use the google_project_iam set of resources.
///
/// Three different resources help you manage your IAM policy for a service account. Each of these resources serves a different use case:
///
/// * `gcp.serviceaccount.IAMPolicy`: Authoritative. Sets the IAM policy for the service account and replaces any existing policy already attached.
/// * `gcp.serviceaccount.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service account are preserved.
/// * `gcp.serviceaccount.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service account are preserved.
///
/// > **Note:** `gcp.serviceaccount.IAMPolicy` **cannot** be used in conjunction with `gcp.serviceaccount.IAMBinding` and `gcp.serviceaccount.IAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.serviceaccount.IAMBinding` resources **can be** used in conjunction with `gcp.serviceaccount.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## Example Usage
///
/// ### Service Account IAM Policy
///
///
///
/// ### Service Account IAM Binding
///
///
///
/// ### Service Account IAM Binding With IAM Conditions:
///
///
///
/// ### Service Account IAM Member
///
///
///
/// ### Service Account IAM Member With IAM Conditions:
///
///
///
///
/// ### Additional Examples
///
/// ### Service Account IAM Policy
///
///
///
/// ### Service Account IAM Binding
///
///
///
/// ### Service Account IAM Binding With IAM Conditions:
///
///
///
/// ### Service Account IAM Member
///
///
///
/// ### Service Account IAM Member With IAM Conditions:
///
///
///
/// ## Import
///
/// ### Importing with conditions:
///
/// Here are examples of importing IAM memberships and bindings that include conditions:
///
/// ```sh
/// $ pulumi import gcp:serviceaccount/iAMMember:IAMMember admin-account-iam "projects/{your-project-id}/serviceAccounts/{your-service-account-email} roles/iam.serviceAccountUser expires_after_2019_12_31"
/// ```
///
/// ```sh
/// $ pulumi import gcp:serviceaccount/iAMMember:IAMMember admin-account-iam "projects/{your-project-id}/serviceAccounts/{your-service-account-email} roles/iam.serviceAccountUser user:foo@example.com expires_after_2019_12_31"
/// ```
class IAMMemberServiceaccountIAmmember extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<IAMMemberConditionServiceaccount?> condition;

  /// (Computed) The etag of the service account IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The role that should be applied. Only one
  /// `gcp.serviceaccount.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// The fully-qualified name of the service account to apply policy to.
  late final pulumi.Output<String> serviceAccountId;

  IAMMemberServiceaccountIAmmember(
    String name, {
    IAMMemberServiceaccountIAmmemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/iAMMember:IAMMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<IAMMemberConditionServiceaccount?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.role = registerOutput<String>('role');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
  }
}
