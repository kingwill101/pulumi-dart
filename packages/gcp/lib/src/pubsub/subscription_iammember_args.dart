// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_iammember_condition.dart';

/// {@template pulumi_pubsub_subscription_iammember_subscription_iammember_args_doc}
/// The set of arguments for SubscriptionIAMMember.
/// {@endtemplate}
/// {@macro pulumi_pubsub_subscription_iammember_subscription_iammember_args_doc}
class SubscriptionIAMMemberArgs {
  final pulumi.Input<SubscriptionIAMMemberCondition>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.pubsub.SubscriptionIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// The subscription name or id to bind to attach IAM policy to.
  final pulumi.Input<String> subscription;

  /// Creates a new [SubscriptionIAMMemberArgs].
  /// [condition] Optional.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  /// [subscription] The subscription name or id to bind to attach IAM policy to.
  SubscriptionIAMMemberArgs({
    SubscriptionIAMMemberCondition? condition,
    required String member,
    String? project,
    required String role,
    required String subscription,
  }) : condition = pulumi.Input.asOptionalInput<SubscriptionIAMMemberCondition>(
         condition,
       ),
       member = pulumi.Input.asInput<String>(member),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role),
       subscription = pulumi.Input.asInput<String>(subscription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            SubscriptionIAMMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'member': member,
      'project': ?project,
      'role': role,
      'subscription': subscription,
    };
  }

  factory SubscriptionIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionIAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : SubscriptionIAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
      subscription: map['subscription'] as String,
    );
  }
}
