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
  const DefaultBucket({
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
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Bucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      existing: (() { final guardedValue = map['existing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExistingBucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

