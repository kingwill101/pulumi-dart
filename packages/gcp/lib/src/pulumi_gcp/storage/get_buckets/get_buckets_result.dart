// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_buckets_bucket/get_buckets_bucket.dart';

/// Result data returned by getBuckets.
class GetBucketsResult {
  /// A list of all retrieved GCS buckets. Structure is defined below.
  final List<GetBucketsBucket> buckets;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? prefix;
  final String? project;

  GetBucketsResult({
    required this.buckets,
    required this.id,
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buckets'] =
        pulumi.Input.encodeList<GetBucketsBucket, Map<String, dynamic>>(
            buckets, (value) => value.toMap());
    map['id'] = id;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketsResult(
      buckets: pulumi.Input.decodeList<GetBucketsBucket>(
          map['buckets'],
          (value) =>
              GetBucketsBucket.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
