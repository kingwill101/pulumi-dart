// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition3.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs3 {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<IAMMemberCondition3>? condition;

  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final Input<String> project;

  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  IAMMemberArgs3({
    this.condition,
    required this.member,
    required this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMMemberCondition3,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['project'] = project;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs3.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs3(
      condition: Input.asOptionalInput<IAMMemberCondition3>(map['condition']),
      member: Input.asInput<String>(map['member']),
      project: Input.asInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
