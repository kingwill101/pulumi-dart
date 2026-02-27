// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../subscription_iammember_condition/subscription_iammember_condition.dart';

/// The set of arguments for SubscriptionIAMMember.
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

  SubscriptionIAMMemberArgs({
    this.condition,
    required this.member,
    this.project,
    required this.role,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          SubscriptionIAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    map['subscription'] = subscription;
    return map;
  }

  factory SubscriptionIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionIAMMemberArgs(
      condition: pulumi.Input.asOptionalInput<SubscriptionIAMMemberCondition>(
          map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
      subscription: pulumi.Input.asInput<String>(map['subscription']),
    );
  }
}
