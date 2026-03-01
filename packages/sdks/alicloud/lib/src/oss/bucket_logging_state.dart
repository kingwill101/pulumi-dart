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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? loggingRole,
    pulumi.Output<String>? targetBucket,
    pulumi.Output<String>? targetPrefix,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      loggingRole = pulumi.Input.asOptionalInput<String>(loggingRole),
      targetBucket = pulumi.Input.asOptionalInput<String>(targetBucket),
      targetPrefix = pulumi.Input.asOptionalInput<String>(targetPrefix);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      loggingRole: map['loggingRole'] == null ? null : pulumi.Output.create<String>(map['loggingRole'] as String),
      targetBucket: map['targetBucket'] == null ? null : pulumi.Output.create<String>(map['targetBucket'] as String),
      targetPrefix: map['targetPrefix'] == null ? null : pulumi.Output.create<String>(map['targetPrefix'] as String),
    );
  }
}

