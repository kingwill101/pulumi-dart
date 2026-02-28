// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iammember_condition.dart';

/// {@template pulumi_serviceaccount_i_ammember_iammember_args_doc}
/// The set of arguments for IAMMember.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_i_ammember_iammember_args_doc}
class IAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberCondition>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.serviceaccount.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// The fully-qualified name of the service account to apply policy to.
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [IAMMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  /// [serviceAccountId] The fully-qualified name of the service account to apply policy to.
  IAMMemberArgs({
    IAMMemberCondition? condition,
    required String member,
    required String role,
    required String serviceAccountId,
  })  : condition = pulumi.Input.asOptionalInput<IAMMemberCondition>(condition),
        member = pulumi.Input.asInput<String>(member),
        role = pulumi.Input.asInput<String>(role),
        serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<IAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['role'] = role;
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory IAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : IAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      member: map['member'] as String,
      role: map['role'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
