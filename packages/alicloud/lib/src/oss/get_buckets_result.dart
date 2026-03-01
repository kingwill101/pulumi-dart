// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket.dart';

/// Result data returned by getBuckets.
class GetBucketsResult {
  /// A list of buckets. Each element contains the following attributes:
  final List<GetBucketsBucket> buckets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  /// A list of bucket names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetBucketsResult].
  /// [buckets] A list of buckets. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] A list of bucket names.
  /// [outputFile] Optional.
  GetBucketsResult({
    required this.buckets,
    required this.id,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': pulumi.Input.encodeList<GetBucketsBucket, Map<String, dynamic>>(buckets, (value) => value.toMap()),
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketsResult(
      buckets: pulumi.Input.decodeList<GetBucketsBucket>(map['buckets'], (value) => GetBucketsBucket.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

