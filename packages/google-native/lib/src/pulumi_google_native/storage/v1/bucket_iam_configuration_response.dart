// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_iam_configuration_bucket_policy_only_response.dart';
import 'bucket_iam_configuration_uniform_bucket_level_access_response.dart';

/// The bucket's IAM configuration.
class BucketIamConfigurationResponse {
  /// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  final BucketIamConfigurationBucketPolicyOnlyResponse bucketPolicyOnly;

  /// The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  final String publicAccessPrevention;

  /// The bucket's uniform bucket-level access configuration.
  final BucketIamConfigurationUniformBucketLevelAccessResponse
      uniformBucketLevelAccess;

  BucketIamConfigurationResponse({
    required this.bucketPolicyOnly,
    required this.publicAccessPrevention,
    required this.uniformBucketLevelAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketPolicyOnly'] = bucketPolicyOnly.toMap();
    map['publicAccessPrevention'] = publicAccessPrevention;
    map['uniformBucketLevelAccess'] = uniformBucketLevelAccess.toMap();
    return map;
  }

  factory BucketIamConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BucketIamConfigurationResponse(
      bucketPolicyOnly: BucketIamConfigurationBucketPolicyOnlyResponse.fromMap(
          (map['bucketPolicyOnly'] as Map).cast<String, dynamic>()),
      publicAccessPrevention: map['publicAccessPrevention'] as String,
      uniformBucketLevelAccess:
          BucketIamConfigurationUniformBucketLevelAccessResponse.fromMap(
              (map['uniformBucketLevelAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
