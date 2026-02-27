import 'package:pulumi/pulumi.dart' as pulumi;
import '../subscription_iammember_condition/subscription_iammember_condition.dart';
import 'subscription_iammember_args.dart';

/// Three different resources help you manage your IAM policy for pubsub subscription. Each of these resources serves a different use case:
///
/// * `gcp.pubsub.SubscriptionIAMPolicy`: Authoritative. Sets the IAM policy for the subscription and replaces any existing policy already attached.
/// * `gcp.pubsub.SubscriptionIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subscription are preserved.
/// * `gcp.pubsub.SubscriptionIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subscription are preserved.
///
/// > **Note:** `gcp.pubsub.SubscriptionIAMPolicy` **cannot** be used in conjunction with `gcp.pubsub.SubscriptionIAMBinding` and `gcp.pubsub.SubscriptionIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.pubsub.SubscriptionIAMBinding` resources **can be** used in conjunction with `gcp.pubsub.SubscriptionIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.pubsub.SubscriptionIAMPolicy
///
///
///
/// ## gcp.pubsub.SubscriptionIAMBinding
///
///
///
/// ## gcp.pubsub.SubscriptionIAMMember
///
///
///
/// ## gcp.pubsub.SubscriptionIAMBinding
///
///
///
/// ## gcp.pubsub.SubscriptionIAMMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Pubsub Subscription resource. For example:
///
/// * `"projects/{{project_id}}/subscriptions/{{subscription}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{{project_id}}/subscriptions/{{subscription}}"
///
/// to = google_pubsub_subscription_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember default projects/{{project_id}}/subscriptions/{{subscription}}
/// ```
class SubscriptionIAMMember extends pulumi.CustomResource {
  late final pulumi.Output<SubscriptionIAMMemberCondition?> condition;

  /// (Computed) The etag of the subscription's IAM policy.
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

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.pubsub.SubscriptionIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// The subscription name or id to bind to attach IAM policy to.
  late final pulumi.Output<String> subscription;

  SubscriptionIAMMember(
    String name, {
    SubscriptionIAMMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<SubscriptionIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.subscription = registerOutput<String>('subscription');
  }
}
