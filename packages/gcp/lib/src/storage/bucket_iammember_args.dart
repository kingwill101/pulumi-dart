// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iammember_condition.dart';

/// {@template pulumi_storage_bucket_iammember_bucket_iammember_args_doc}
/// The set of arguments for BucketIAMMember.
/// {@endtemplate}
/// {@macro pulumi_storage_bucket_iammember_bucket_iammember_args_doc}
class BucketIAMMemberArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<BucketIAMMemberCondition>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.storage.BucketIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [BucketIAMMemberArgs].
  /// [bucket] Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  BucketIAMMemberArgs({
    required String bucket,
    BucketIAMMemberCondition? condition,
    required String member,
    required String role,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        condition =
            pulumi.Input.asOptionalInput<BucketIAMMemberCondition>(condition),
        member = pulumi.Input.asInput<String>(member),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          BucketIAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory BucketIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return BucketIAMMemberArgs(
      bucket: map['bucket'] as String,
      condition: map['condition'] == null
          ? null
          : BucketIAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      member: map['member'] as String,
      role: map['role'] as String,
    );
  }
}
