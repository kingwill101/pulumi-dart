// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../../iam/v1/condition_iam_v1.dart';

/// The set of arguments for DomainBackupIamMember.
class DomainBackupIamMemberManagedidentitiesV1alpha1Args {
  /// An IAM Condition for a given binding.
  final pulumi.Input<ConditionIamV1>? condition;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;

  /// The role that should be applied.
  final pulumi.Input<String> role;

  DomainBackupIamMemberManagedidentitiesV1alpha1Args({
    this.condition,
    required this.member,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<ConditionIamV1,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['name'] = name;
    map['role'] = role;
    return map;
  }

  factory DomainBackupIamMemberManagedidentitiesV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return DomainBackupIamMemberManagedidentitiesV1alpha1Args(
      condition: pulumi.Input.asOptionalInput<ConditionIamV1>(map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      name: pulumi.Input.asInput<String>(map['name']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
