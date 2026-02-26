// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../insights_dataset_config_include_cloud_storage_buckets_cloud_storage_bucket/insights_dataset_config_include_cloud_storage_buckets_cloud_storage_bucket.dart';

class InsightsDatasetConfigIncludeCloudStorageBuckets {
  /// The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  /// Structure is documented below.
  final List<InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket>
      cloudStorageBuckets;

  InsightsDatasetConfigIncludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageBuckets'] = Input.encodeList<
        InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket,
        Map<String, dynamic>>(cloudStorageBuckets, (value) => value.toMap());
    return map;
  }

  factory InsightsDatasetConfigIncludeCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return InsightsDatasetConfigIncludeCloudStorageBuckets(
      cloudStorageBuckets: Input.decodeList<
              InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket>(
          map['cloudStorageBuckets'],
          (value) =>
              InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
