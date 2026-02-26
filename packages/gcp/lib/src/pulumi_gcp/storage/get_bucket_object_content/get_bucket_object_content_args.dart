// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketObjectContent.
class GetBucketObjectContentArgs {
  /// The name of the containing bucket.
  final Input<String> bucket;

  /// (Computed) The content of the object.
  final Input<String>? content;

  /// The name of the object.
  final Input<String> name;

  GetBucketObjectContentArgs({
    required this.bucket,
    this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    map['name'] = name;
    return map;
  }

  factory GetBucketObjectContentArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentArgs(
      bucket: Input.asInput<String>(map['bucket']),
      content: Input.asOptionalInput<String>(map['content']),
      name: Input.asInput<String>(map['name']),
    );
  }
}
