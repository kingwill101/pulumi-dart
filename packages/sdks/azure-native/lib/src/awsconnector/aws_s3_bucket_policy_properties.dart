// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsS3BucketPolicy
class AwsS3BucketPolicyProperties {
  /// <p>The bucket policy as a JSON document.</p>
  final pulumi.Input<String>? policy;

  /// Creates a new [AwsS3BucketPolicyProperties].
  /// [policy] <p>The bucket policy as a JSON document.</p>
  AwsS3BucketPolicyProperties({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory AwsS3BucketPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3BucketPolicyProperties(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
    );
  }
}

