// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket.dart';
import 'existing_bucket.dart';

/// Bucket with default setup unless explicitly skipped.
class DefaultBucket {
  /// Arguments to use instead of the default values during creation.
  final pulumi.Input<Bucket>? args;
  /// Identity of an existing bucket to use. Cannot be used in combination with `args`.
  final pulumi.Input<ExistingBucket>? existing;
  /// Skip creation of the bucket.
  final pulumi.Input<bool>? skip;

  /// Creates a new [DefaultBucket].
  /// [args] Arguments to use instead of the default values during creation.
  /// [existing] Identity of an existing bucket to use. Cannot be used in combination with `args`.
  /// [skip] Skip creation of the bucket.
  DefaultBucket({
    this.args,
    this.existing,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<Bucket, Map<String, dynamic>>(args, (value) => value.toMap()),
      'existing': ?pulumi.Input.mapOptionalInputValue<ExistingBucket, Map<String, dynamic>>(existing, (value) => value.toMap()),
      'skip': ?skip,
    };
  }

  factory DefaultBucket.fromMap(Map<String, dynamic> map) {
    return DefaultBucket(
      args: map['args'] == null ? null : (Bucket.fromMap((map['args'] as Map).cast<String, dynamic>())).input(),
      existing: map['existing'] == null ? null : (ExistingBucket.fromMap((map['existing'] as Map).cast<String, dynamic>())).input(),
      skip: map['skip'] == null ? null : (map['skip'] as bool).input(),
    );
  }
}

