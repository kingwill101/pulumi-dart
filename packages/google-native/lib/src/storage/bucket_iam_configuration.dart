// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_iam_configuration_bucket_policy_only.dart';
import 'bucket_iam_configuration_uniform_bucket_level_access.dart';

/// The bucket's IAM configuration.
class BucketIamConfiguration {
  /// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  final BucketIamConfigurationBucketPolicyOnly? bucketPolicyOnly;
  /// The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  final String? publicAccessPrevention;
  /// The bucket's uniform bucket-level access configuration.
  final BucketIamConfigurationUniformBucketLevelAccess? uniformBucketLevelAccess;

  /// Creates a new [BucketIamConfiguration].
  /// [bucketPolicyOnly] The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  /// [publicAccessPrevention] The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  /// [uniformBucketLevelAccess] The bucket's uniform bucket-level access configuration.
  BucketIamConfiguration({
    this.bucketPolicyOnly,
    this.publicAccessPrevention,
    this.uniformBucketLevelAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPolicyOnly': ?bucketPolicyOnly == null ? null : bucketPolicyOnly!.toMap(),
      'publicAccessPrevention': ?publicAccessPrevention,
      'uniformBucketLevelAccess': ?uniformBucketLevelAccess == null ? null : uniformBucketLevelAccess!.toMap(),
    };
  }

  factory BucketIamConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketIamConfiguration(
      bucketPolicyOnly: map['bucketPolicyOnly'] == null ? null : BucketIamConfigurationBucketPolicyOnly.fromMap((map['bucketPolicyOnly'] as Map).cast<String, dynamic>()),
      publicAccessPrevention: map['publicAccessPrevention'] == null ? null : map['publicAccessPrevention'] as String,
      uniformBucketLevelAccess: map['uniformBucketLevelAccess'] == null ? null : BucketIamConfigurationUniformBucketLevelAccess.fromMap((map['uniformBucketLevelAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

