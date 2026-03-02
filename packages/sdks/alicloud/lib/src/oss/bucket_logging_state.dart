// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketLogging resources.
class BucketLoggingState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// Authorization role used for bucket logging
  final pulumi.Input<String>? loggingRole;
  /// The bucket that stores access logs.
  final pulumi.Input<String>? targetBucket;
  /// The prefix of the saved log objects. This element can be left empty.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [BucketLoggingState].
  /// [bucket] The name of the bucket
  /// [loggingRole] Authorization role used for bucket logging
  /// [targetBucket] The bucket that stores access logs.
  /// [targetPrefix] The prefix of the saved log objects. This element can be left empty.
  BucketLoggingState({
    this.bucket,
    this.loggingRole,
    this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'loggingRole': ?loggingRole,
      'targetBucket': ?targetBucket,
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketLoggingState.fromMap(Map<String, dynamic> map) {
    return BucketLoggingState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      loggingRole: map['loggingRole'] == null ? null : (map['loggingRole'] as String).input(),
      targetBucket: map['targetBucket'] == null ? null : (map['targetBucket'] as String).input(),
      targetPrefix: map['targetPrefix'] == null ? null : (map['targetPrefix'] as String).input(),
    );
  }
}

