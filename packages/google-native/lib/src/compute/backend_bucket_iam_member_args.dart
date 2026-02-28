// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';

/// {@template pulumi_compute_alpha_backend_bucket_iam_member_args_doc}
/// The set of arguments for BackendBucketIamMember.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_backend_bucket_iam_member_args_doc}
class BackendBucketIamMemberArgs {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;
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

  /// Creates a new [BackendBucketIamMemberArgs].
  /// [condition] An IAM Condition for a given binding.
  /// [member] Identity that will be granted the privilege in role. The entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied.
  BackendBucketIamMemberArgs({
    Condition? condition,
    required String member,
    required String name,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<Condition>(condition),
      member = pulumi.Input.asInput<String>(member),
      name = pulumi.Input.asInput<String>(name),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'name': name,
      'role': role,
    };
  }

  factory BackendBucketIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketIamMemberArgs(
      condition: map['condition'] == null ? null : Condition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      member: map['member'] as String,
      name: map['name'] as String,
      role: map['role'] as String,
    );
  }
}

