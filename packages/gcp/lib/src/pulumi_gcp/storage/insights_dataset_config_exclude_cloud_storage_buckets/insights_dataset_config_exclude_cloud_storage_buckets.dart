// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../insights_dataset_config_exclude_cloud_storage_buckets_cloud_storage_bucket/insights_dataset_config_exclude_cloud_storage_buckets_cloud_storage_bucket.dart';

class InsightsDatasetConfigExcludeCloudStorageBuckets {
  /// The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  /// Structure is documented below.
  final List<InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket>
      cloudStorageBuckets;

  InsightsDatasetConfigExcludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageBuckets'] = Input.encodeList<
        InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket,
        Map<String, dynamic>>(cloudStorageBuckets, (value) => value.toMap());
    return map;
  }

  factory InsightsDatasetConfigExcludeCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return InsightsDatasetConfigExcludeCloudStorageBuckets(
      cloudStorageBuckets: Input.decodeList<
              InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket>(
          map['cloudStorageBuckets'],
          (value) =>
              InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
