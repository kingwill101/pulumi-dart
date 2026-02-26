// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketObject.
class GetBucketObjectArgs {
  /// The name of the containing bucket.
  final Input<String>? bucket;

  /// The name of the object.
  final Input<String>? name;

  GetBucketObjectArgs({
    this.bucket,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: Input.asOptionalInput<String>(map['bucket']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
