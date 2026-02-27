// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bucket_objects_bucket_object/get_bucket_objects_bucket_object.dart';

/// Result data returned by getBucketObjects.
class GetBucketObjectsResult {
  final String bucket;

  /// A list of retrieved objects contained in the provided GCS bucket. Structure is defined below.
  final List<GetBucketObjectsBucketObject> bucketObjects;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? matchGlob;
  final String? prefix;

  GetBucketObjectsResult({
    required this.bucket,
    required this.bucketObjects,
    required this.id,
    this.matchGlob,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['bucketObjects'] = pulumi.Input.encodeList<GetBucketObjectsBucketObject,
        Map<String, dynamic>>(bucketObjects, (value) => value.toMap());
    map['id'] = id;
    final matchGlobValue = matchGlob;
    if (matchGlobValue != null) {
      map['matchGlob'] = matchGlobValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory GetBucketObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsResult(
      bucket: map['bucket'] as String,
      bucketObjects: pulumi.Input.decodeList<GetBucketObjectsBucketObject>(
          map['bucketObjects'],
          (value) => GetBucketObjectsBucketObject.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      matchGlob: map['matchGlob'] == null ? null : map['matchGlob'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
