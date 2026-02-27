// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iammember_condition/iammember_condition.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberCondition>? condition;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.folder.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String> role;

  IAMMemberArgs({
    this.condition,
    required this.folder,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<IAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['folder'] = folder;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs(
      condition:
          pulumi.Input.asOptionalInput<IAMMemberCondition>(map['condition']),
      folder: pulumi.Input.asInput<String>(map['folder']),
      member: pulumi.Input.asInput<String>(map['member']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
