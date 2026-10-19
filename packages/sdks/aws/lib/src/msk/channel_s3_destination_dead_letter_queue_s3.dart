// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelS3DestinationDeadLetterQueueS3 {
  /// ARN of the dead-letter Amazon S3 bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> bucketArn;
  /// Prefix prepended to every dead-letter Amazon S3 object key.
  final pulumi.Input<String?>? errorOutputPrefix;
  /// 12-digit AWS account ID expected to own the dead-letter Amazon S3 bucket.
  final pulumi.Input<String?>? expectedBucketOwner;

  /// Creates a new [ChannelS3DestinationDeadLetterQueueS3].
  /// [bucketArn] ARN of the dead-letter Amazon S3 bucket.
  /// [errorOutputPrefix] Prefix prepended to every dead-letter Amazon S3 object key.
  /// [expectedBucketOwner] 12-digit AWS account ID expected to own the dead-letter Amazon S3 bucket.
  const ChannelS3DestinationDeadLetterQueueS3({
    required this.bucketArn,
    this.errorOutputPrefix,
    this.expectedBucketOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'errorOutputPrefix': ?errorOutputPrefix,
      'expectedBucketOwner': ?expectedBucketOwner,
    };
  }

  factory ChannelS3DestinationDeadLetterQueueS3.fromMap(Map<String, dynamic> map) {
    return ChannelS3DestinationDeadLetterQueueS3(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      errorOutputPrefix: (() { final guardedValue = map['errorOutputPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
