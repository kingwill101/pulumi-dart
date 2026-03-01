// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBucketPolicy.
class GetBucketPolicyResult {
  final String bucket;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// IAM bucket policy.
  final String policy;
  final String region;

  /// Creates a new [GetBucketPolicyResult].
  /// [bucket] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] IAM bucket policy.
  /// [region] Required.
  GetBucketPolicyResult({
    required this.bucket,
    required this.id,
    required this.policy,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'id': id,
      'policy': policy,
      'region': region,
    };
  }

  factory GetBucketPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBucketPolicyResult(
      bucket: map['bucket'] as String,
      id: map['id'] as String,
      policy: map['policy'] as String,
      region: map['region'] as String,
    );
  }
}

