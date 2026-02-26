// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_insights_dataset_config_exclude_cloud_storage_bucket_cloud_storage_bucket/get_insights_dataset_config_exclude_cloud_storage_bucket_cloud_storage_bucket.dart';

class GetInsightsDatasetConfigExcludeCloudStorageBucket {
  /// The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  final List<
          GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket>
      cloudStorageBuckets;

  GetInsightsDatasetConfigExcludeCloudStorageBucket({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageBuckets'] = Input.encodeList<
        GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket,
        Map<String, dynamic>>(cloudStorageBuckets, (value) => value.toMap());
    return map;
  }

  factory GetInsightsDatasetConfigExcludeCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigExcludeCloudStorageBucket(
      cloudStorageBuckets: Input.decodeList<
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket>(
          map['cloudStorageBuckets'],
          (value) =>
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
