// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_conditions_amazon_s3_bucket_conditions.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetConditions {
  /// Amazon S3 bucket conditions.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_targets_other_cloud_target_conditions_amazon_s3_bucket_conditions"></a>The `amazon_s3_bucket_conditions` block supports:
  final PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions?
  amazonS3BucketConditions;

  /// Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  final String? minAge;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetConditions].
  /// [amazonS3BucketConditions] Amazon S3 bucket conditions.
  /// [minAge] Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  PreventionDiscoveryConfigTargetOtherCloudTargetConditions({
    this.amazonS3BucketConditions,
    this.minAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3BucketConditions': ?amazonS3BucketConditions == null
          ? null
          : amazonS3BucketConditions!.toMap(),
      'minAge': ?minAge,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetConditions(
      amazonS3BucketConditions: map['amazonS3BucketConditions'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions.fromMap(
              (map['amazonS3BucketConditions'] as Map).cast<String, dynamic>(),
            ),
      minAge: map['minAge'] == null ? null : map['minAge'] as String,
    );
  }
}
