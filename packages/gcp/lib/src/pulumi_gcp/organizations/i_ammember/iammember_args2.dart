// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition2.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs2 {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<IAMMemberCondition2>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The organization id of the target organization.
  final Input<String> orgId;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.organizations.IAMBinding`" pulumi-lang-dotnet="`gcp.organizations.IAMBinding`" pulumi-lang-go="`organizations.IAMBinding`" pulumi-lang-python="`organizations.IAMBinding`" pulumi-lang-yaml="`gcp.organizations.IAMBinding`" pulumi-lang-java="`gcp.organizations.IAMBinding`">`gcp.organizations.IAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final Input<String> role;

  IAMMemberArgs2({
    this.condition,
    required this.member,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMMemberCondition2,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs2.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs2(
      condition: Input.asOptionalInput<IAMMemberCondition2>(map['condition']),
      member: Input.asInput<String>(map['member']),
      orgId: Input.asInput<String>(map['orgId']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
