// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBucketPolicy.
class GetBucketPolicyResult {
  final String? bucket;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IAM bucket policy.
  final String? policy;
  final String? region;

  /// Creates a new [GetBucketPolicyResult].
  /// [bucket] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] IAM bucket policy.
  /// [region] Optional.
  const GetBucketPolicyResult({
    this.bucket,
    this.id,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'id': ?id,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory GetBucketPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBucketPolicyResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
