// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition4.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs4 {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<IAMMemberCondition4>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.serviceaccount.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  /// The fully-qualified name of the service account to apply policy to.
  final Input<String> serviceAccountId;

  IAMMemberArgs4({
    this.condition,
    required this.member,
    required this.role,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMMemberCondition4,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['role'] = role;
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory IAMMemberArgs4.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs4(
      condition: Input.asOptionalInput<IAMMemberCondition4>(map['condition']),
      member: Input.asInput<String>(map['member']),
      role: Input.asInput<String>(map['role']),
      serviceAccountId: Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
