// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
class BucketIamConfigurationBucketPolicyOnly {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  final bool? enabled;

  /// The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
  final String? lockedTime;

  /// Creates a new [BucketIamConfigurationBucketPolicyOnly].
  /// [enabled] If set, access is controlled only by bucket-level or above IAM policies.
  /// [lockedTime] The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
  BucketIamConfigurationBucketPolicyOnly({this.enabled, this.lockedTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'lockedTime': ?lockedTime};
  }

  factory BucketIamConfigurationBucketPolicyOnly.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketIamConfigurationBucketPolicyOnly(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      lockedTime: map['lockedTime'] == null
          ? null
          : map['lockedTime'] as String,
    );
  }
}
