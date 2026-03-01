// ignore_for_file: unused_element, unnecessary_cast

import 'batch_operations_job_bucket_list_buckets.dart';

class BatchOperationsJobBucketList {
  /// List of buckets and their objects to be transformed.
  /// Structure is documented below.
  final BatchOperationsJobBucketListBuckets buckets;

  /// Creates a new [BatchOperationsJobBucketList].
  /// [buckets] List of buckets and their objects to be transformed.
  BatchOperationsJobBucketList({
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': buckets.toMap(),
    };
  }

  factory BatchOperationsJobBucketList.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketList(
      buckets: BatchOperationsJobBucketListBuckets.fromMap((map['buckets'] as Map).cast<String, dynamic>()),
    );
  }
}

