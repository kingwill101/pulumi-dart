// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBucketIamPolicy.
class GetBucketIamPolicyArgs {
  final Input<String> bucket;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? userProject;

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
      bucket: Input.asInput<String>(map['bucket']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
