// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_insights_dataset_config_include_cloud_storage_bucket_cloud_storage_bucket/get_insights_dataset_config_include_cloud_storage_bucket_cloud_storage_bucket.dart';

class GetInsightsDatasetConfigIncludeCloudStorageBucket {
  /// The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  final List<
          GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket>
      cloudStorageBuckets;

  GetInsightsDatasetConfigIncludeCloudStorageBucket({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageBuckets'] = Input.encodeList<
        GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket,
        Map<String, dynamic>>(cloudStorageBuckets, (value) => value.toMap());
    return map;
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIncludeCloudStorageBucket(
      cloudStorageBuckets: Input.decodeList<
              GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket>(
          map['cloudStorageBuckets'],
          (value) =>
              GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
