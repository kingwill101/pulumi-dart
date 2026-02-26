// ignore_for_file: unused_element, unnecessary_cast

import 'bucket.dart';
import 'existing_bucket.dart';

/// Bucket with default setup unless explicitly skipped.
class DefaultBucket {
  /// Arguments to use instead of the default values during creation.
  final Bucket? args;

  /// Identity of an existing bucket to use. Cannot be used in combination with `args`.
  final ExistingBucket? existing;

  /// Skip creation of the bucket.
  final bool? skip;

  DefaultBucket({
    this.args,
    this.existing,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue.toMap();
    }
    final existingValue = existing;
    if (existingValue != null) {
      map['existing'] = existingValue.toMap();
    }
    final skipValue = skip;
    if (skipValue != null) {
      map['skip'] = skipValue;
    }
    return map;
  }

  factory DefaultBucket.fromMap(Map<String, dynamic> map) {
    return DefaultBucket(
      args: map['args'] == null
          ? null
          : Bucket.fromMap((map['args'] as Map).cast<String, dynamic>()),
      existing: map['existing'] == null
          ? null
          : ExistingBucket.fromMap(
              (map['existing'] as Map).cast<String, dynamic>()),
      skip: map['skip'] == null ? null : map['skip'] as bool,
    );
  }
}
