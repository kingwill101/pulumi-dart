// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_object_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_object_get_bucket_object_args_doc}
class GetBucketObjectArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String>? bucket;

  /// The name of the object.
  final pulumi.Input<String>? name;

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] The name of the containing bucket.
  /// [name] The name of the object.
  GetBucketObjectArgs({
    String? bucket,
    String? name,
  })  : bucket = pulumi.Input.asOptionalInput<String>(bucket),
        name = pulumi.Input.asOptionalInput<String>(name);

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
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
