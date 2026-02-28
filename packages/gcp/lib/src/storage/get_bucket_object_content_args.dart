// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_object_content_get_bucket_object_content_args_doc}
/// Arguments for getBucketObjectContent.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_object_content_get_bucket_object_content_args_doc}
class GetBucketObjectContentArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;

  /// (Computed) The content of the object.
  final pulumi.Input<String>? content;

  /// The name of the object.
  final pulumi.Input<String> name;

  /// Creates a new [GetBucketObjectContentArgs].
  /// [bucket] The name of the containing bucket.
  /// [content] (Computed) The content of the object.
  /// [name] The name of the object.
  GetBucketObjectContentArgs({
    required String bucket,
    String? content,
    required String name,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        content = pulumi.Input.asOptionalInput<String>(content),
        name = pulumi.Input.asInput<String>(name);

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
      bucket: map['bucket'] as String,
      content: map['content'] == null ? null : map['content'] as String,
      name: map['name'] as String,
    );
  }
}
