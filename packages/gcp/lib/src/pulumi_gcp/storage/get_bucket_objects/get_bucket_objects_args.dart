// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketObjects.
class GetBucketObjectsArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;

  /// A glob pattern used to filter results (for example, `foo*bar`).
  final pulumi.Input<String>? matchGlob;

  /// Filter results to include only objects whose names begin with this prefix.
  final pulumi.Input<String>? prefix;

  GetBucketObjectsArgs({
    required this.bucket,
    this.matchGlob,
    this.prefix,
  });

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      matchGlob: pulumi.Input.asOptionalInput<String>(map['matchGlob']),
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
    );
  }
}
