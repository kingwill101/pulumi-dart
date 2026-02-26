// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketIamPolicy.
class GetBucketIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> bucket;

  GetBucketIamPolicyArgs({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory GetBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyArgs(
      bucket: Input.asInput<String>(map['bucket']),
    );
  }
}
