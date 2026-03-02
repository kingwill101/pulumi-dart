// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_logging_bucket_logging_args_doc}
/// The set of arguments for BucketLogging.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_logging_bucket_logging_args_doc}
class BucketLoggingArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// Authorization role used for bucket logging
  final pulumi.Input<String>? loggingRole;
  /// The bucket that stores access logs.
  final pulumi.Input<String> targetBucket;
  /// The prefix of the saved log objects. This element can be left empty.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [BucketLoggingArgs].
  /// [bucket] The name of the bucket
  /// [loggingRole] Authorization role used for bucket logging
  /// [targetBucket] The bucket that stores access logs.
  /// [targetPrefix] The prefix of the saved log objects. This element can be left empty.
  BucketLoggingArgs({
    required this.bucket,
    this.loggingRole,
    required this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'loggingRole': ?loggingRole,
      'targetBucket': targetBucket,
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketLoggingArgs.fromMap(Map<String, dynamic> map) {
    return BucketLoggingArgs(
      bucket: (map['bucket'] as String).input(),
      loggingRole: map['loggingRole'] == null ? null : (map['loggingRole'] as String).input(),
      targetBucket: (map['targetBucket'] as String).input(),
      targetPrefix: map['targetPrefix'] == null ? null : (map['targetPrefix'] as String).input(),
    );
  }
}

