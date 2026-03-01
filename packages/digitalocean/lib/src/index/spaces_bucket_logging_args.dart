// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_spaces_bucket_logging_spaces_bucket_logging_args_doc}
/// The set of arguments for SpacesBucketLogging.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_bucket_logging_spaces_bucket_logging_args_doc}
class SpacesBucketLoggingArgs {
  /// The name of the bucket which will be logged.
  final pulumi.Input<String> bucket;
  /// The region where the bucket resides.
  final pulumi.Input<String> region;
  /// The name of the bucket which will store the logs.
  final pulumi.Input<String> targetBucket;
  /// The prefix for the log files.
  final pulumi.Input<String> targetPrefix;

  /// Creates a new [SpacesBucketLoggingArgs].
  /// [bucket] The name of the bucket which will be logged.
  /// [region] The region where the bucket resides.
  /// [targetBucket] The name of the bucket which will store the logs.
  /// [targetPrefix] The prefix for the log files.
  SpacesBucketLoggingArgs({
    required String bucket,
    required String region,
    required String targetBucket,
    required String targetPrefix,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      region = pulumi.Input.asInput<String>(region),
      targetBucket = pulumi.Input.asInput<String>(targetBucket),
      targetPrefix = pulumi.Input.asInput<String>(targetPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': region,
      'targetBucket': targetBucket,
      'targetPrefix': targetPrefix,
    };
  }

  factory SpacesBucketLoggingArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLoggingArgs(
      bucket: map['bucket'] as String,
      region: map['region'] as String,
      targetBucket: map['targetBucket'] as String,
      targetPrefix: map['targetPrefix'] as String,
    );
  }
}

