// ignore_for_file: unused_element, unnecessary_cast

import 'batch_operations_job_bucket_list_buckets_manifest.dart';
import 'batch_operations_job_bucket_list_buckets_prefix_list.dart';

class BatchOperationsJobBucketListBuckets {
  /// Bucket name for the objects to be transformed.
  final String bucket;

  /// contain the manifest source file that is a CSV file in a Google Cloud Storage bucket.
  /// Structure is documented below.
  final BatchOperationsJobBucketListBucketsManifest? manifest;

  /// Specifies objects matching a prefix set.
  /// Structure is documented below.
  final BatchOperationsJobBucketListBucketsPrefixList? prefixList;

  /// Creates a new [BatchOperationsJobBucketListBuckets].
  /// [bucket] Bucket name for the objects to be transformed.
  /// [manifest] contain the manifest source file that is a CSV file in a Google Cloud Storage bucket.
  /// [prefixList] Specifies objects matching a prefix set.
  BatchOperationsJobBucketListBuckets({
    required this.bucket,
    this.manifest,
    this.prefixList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final manifestValue = manifest;
    if (manifestValue != null) {
      map['manifest'] = manifestValue.toMap();
    }
    final prefixListValue = prefixList;
    if (prefixListValue != null) {
      map['prefixList'] = prefixListValue.toMap();
    }
    return map;
  }

  factory BatchOperationsJobBucketListBuckets.fromMap(
      Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBuckets(
      bucket: map['bucket'] as String,
      manifest: map['manifest'] == null
          ? null
          : BatchOperationsJobBucketListBucketsManifest.fromMap(
              (map['manifest'] as Map).cast<String, dynamic>()),
      prefixList: map['prefixList'] == null
          ? null
          : BatchOperationsJobBucketListBucketsPrefixList.fromMap(
              (map['prefixList'] as Map).cast<String, dynamic>()),
    );
  }
}
