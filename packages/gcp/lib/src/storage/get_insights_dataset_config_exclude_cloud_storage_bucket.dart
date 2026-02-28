// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_dataset_config_exclude_cloud_storage_bucket_cloud_storage_bucket.dart';

class GetInsightsDatasetConfigExcludeCloudStorageBucket {
  /// The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  final List<
          GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket>
      cloudStorageBuckets;

  /// Creates a new [GetInsightsDatasetConfigExcludeCloudStorageBucket].
  /// [cloudStorageBuckets] The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  GetInsightsDatasetConfigExcludeCloudStorageBucket({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageBuckets'] = pulumi.Input.encodeList<
        GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket,
        Map<String, dynamic>>(cloudStorageBuckets, (value) => value.toMap());
    return map;
  }

  factory GetInsightsDatasetConfigExcludeCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigExcludeCloudStorageBucket(
      cloudStorageBuckets: pulumi.Input.decodeList<
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket>(
          map['cloudStorageBuckets'],
          (value) =>
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
