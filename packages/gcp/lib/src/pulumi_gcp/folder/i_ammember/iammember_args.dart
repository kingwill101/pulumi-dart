// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<IAMMemberCondition>? condition;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final Input<String> folder;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.folder.IAMBinding`" pulumi-lang-dotnet="`gcp.folder.IAMBinding`" pulumi-lang-go="`folder.IAMBinding`" pulumi-lang-python="`folder.IAMBinding`" pulumi-lang-yaml="`gcp.folder.IAMBinding`" pulumi-lang-java="`gcp.folder.IAMBinding`">`gcp.folder.IAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final Input<String> role;

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
      map['condition'] =
          Input.mapOptionalInputValue<IAMMemberCondition, Map<String, dynamic>>(
              conditionValue, (value) => value.toMap());
    }
    map['folder'] = folder;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs(
      condition: Input.asOptionalInput<IAMMemberCondition>(map['condition']),
      folder: Input.asInput<String>(map['folder']),
      member: Input.asInput<String>(map['member']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
