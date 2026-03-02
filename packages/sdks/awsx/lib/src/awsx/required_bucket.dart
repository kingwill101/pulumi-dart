// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket.dart';
import 'existing_bucket.dart';

/// Bucket with default setup.
class RequiredBucket {
  /// Arguments to use instead of the default values during creation.
  final pulumi.Input<Bucket>? args;
  /// Identity of an existing bucket to use. Cannot be used in combination with `args`.
  final pulumi.Input<ExistingBucket>? existing;

  /// Creates a new [RequiredBucket].
  /// [args] Arguments to use instead of the default values during creation.
  /// [existing] Identity of an existing bucket to use. Cannot be used in combination with `args`.
  RequiredBucket({
    this.args,
    this.existing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<Bucket, Map<String, dynamic>>(args, (value) => value.toMap()),
      'existing': ?pulumi.Input.mapOptionalInputValue<ExistingBucket, Map<String, dynamic>>(existing, (value) => value.toMap()),
    };
  }

  factory RequiredBucket.fromMap(Map<String, dynamic> map) {
    return RequiredBucket(
      args: map['args'] == null ? null : (Bucket.fromMap((map['args'] as Map).cast<String, dynamic>())).input(),
      existing: map['existing'] == null ? null : (ExistingBucket.fromMap((map['existing'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

