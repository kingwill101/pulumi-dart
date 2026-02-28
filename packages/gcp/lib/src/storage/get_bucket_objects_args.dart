// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_objects_get_bucket_objects_args_doc}
/// Arguments for getBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_objects_get_bucket_objects_args_doc}
class GetBucketObjectsArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;

  /// A glob pattern used to filter results (for example, `foo*bar`).
  final pulumi.Input<String>? matchGlob;

  /// Filter results to include only objects whose names begin with this prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [GetBucketObjectsArgs].
  /// [bucket] The name of the containing bucket.
  /// [matchGlob] A glob pattern used to filter results (for example, `foo*bar`).
  /// [prefix] Filter results to include only objects whose names begin with this prefix.
  GetBucketObjectsArgs({
    required String bucket,
    String? matchGlob,
    String? prefix,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        matchGlob = pulumi.Input.asOptionalInput<String>(matchGlob),
        prefix = pulumi.Input.asOptionalInput<String>(prefix);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
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

  factory GetBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsArgs(
      bucket: map['bucket'] as String,
      matchGlob: map['matchGlob'] == null ? null : map['matchGlob'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
