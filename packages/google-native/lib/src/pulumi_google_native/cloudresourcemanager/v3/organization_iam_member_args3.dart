// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../../iam/v1/condition8.dart';

/// The set of arguments for OrganizationIamMember.
class OrganizationIamMemberArgs3 {
  /// An IAM Condition for a given binding.
  final Input<Condition8>? condition;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The name of the resource to manage IAM policies for.
  final Input<String> name;

  /// The role that should be applied.
  final Input<String> role;

  OrganizationIamMemberArgs3({
    this.condition,
    required this.member,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] =
          Input.mapOptionalInputValue<Condition8, Map<String, dynamic>>(
              conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['name'] = name;
    map['role'] = role;
    return map;
  }

  factory OrganizationIamMemberArgs3.fromMap(Map<String, dynamic> map) {
    return OrganizationIamMemberArgs3(
      condition: Input.asOptionalInput<Condition8>(map['condition']),
      member: Input.asInput<String>(map['member']),
      name: Input.asInput<String>(map['name']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
