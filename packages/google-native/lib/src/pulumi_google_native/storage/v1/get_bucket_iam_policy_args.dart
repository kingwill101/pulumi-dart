// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketIamPolicy.
class GetBucketIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? userProject;

  GetBucketIamPolicyArgs({
    required this.bucket,
    this.optionsRequestedPolicyVersion,
    this.userProject,
  });

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
