// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsS3BucketPolicy
class AwsS3BucketPolicyPropertiesResponse {
  /// <p>The bucket policy as a JSON document.</p>
  final String? policy;

  /// Creates a new [AwsS3BucketPolicyPropertiesResponse].
  /// [policy] <p>The bucket policy as a JSON document.</p>
  AwsS3BucketPolicyPropertiesResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory AwsS3BucketPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3BucketPolicyPropertiesResponse(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

