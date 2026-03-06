// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsS3BucketPolicy
class AwsS3BucketPolicyPropertiesResponse {
  /// &lt;p&gt;The bucket policy as a JSON document.&lt;/p&gt;
  final pulumi.Input<String>? policy;

  /// Creates a new [AwsS3BucketPolicyPropertiesResponse].
  /// [policy] &lt;p&gt;The bucket policy as a JSON document.&lt;/p&gt;
  const AwsS3BucketPolicyPropertiesResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory AwsS3BucketPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3BucketPolicyPropertiesResponse(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

