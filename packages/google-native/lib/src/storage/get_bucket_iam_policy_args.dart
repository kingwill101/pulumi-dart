// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_iam_policy_args_doc}
/// Arguments for getBucketIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_iam_policy_args_doc}
class GetBucketIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetBucketIamPolicyArgs].
  /// [bucket] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [userProject] Optional.
  GetBucketIamPolicyArgs({
    required String bucket,
    int? optionsRequestedPolicyVersion,
    String? userProject,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyArgs(
      bucket: map['bucket'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      userProject:
          map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}
