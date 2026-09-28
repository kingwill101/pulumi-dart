// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelS3DestinationStorage {
  /// ARN of the destination Amazon S3 bucket.
  final pulumi.Input<String> bucketArn;
  /// Compression codec applied to delivered Amazon S3 objects.
  final pulumi.Input<String> compressionType;
  /// 12-digit AWS account ID expected to own the Amazon S3 bucket.
  final pulumi.Input<String?>? expectedBucketOwner;
  /// Template that controls the Amazon S3 object key for each delivered record.
  final pulumi.Input<String?>? outputKeyTemplate;
  /// Prefix prepended to every Amazon S3 object key written by the channel.
  final pulumi.Input<String?>? outputPrefix;
  /// Amazon S3 storage class for delivered objects.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> storageClass;

  /// Creates a new [ChannelS3DestinationStorage].
  /// [bucketArn] ARN of the destination Amazon S3 bucket.
  /// [compressionType] Compression codec applied to delivered Amazon S3 objects.
  /// [expectedBucketOwner] 12-digit AWS account ID expected to own the Amazon S3 bucket.
  /// [outputKeyTemplate] Template that controls the Amazon S3 object key for each delivered record.
  /// [outputPrefix] Prefix prepended to every Amazon S3 object key written by the channel.
  /// [storageClass] Amazon S3 storage class for delivered objects.
  const ChannelS3DestinationStorage({
    required this.bucketArn,
    required this.compressionType,
    this.expectedBucketOwner,
    this.outputKeyTemplate,
    this.outputPrefix,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'compressionType': compressionType,
      'expectedBucketOwner': ?expectedBucketOwner,
      'outputKeyTemplate': ?outputKeyTemplate,
      'outputPrefix': ?outputPrefix,
      'storageClass': storageClass,
    };
  }

  factory ChannelS3DestinationStorage.fromMap(Map<String, dynamic> map) {
    return ChannelS3DestinationStorage(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      compressionType: pulumi.Input.fromValue(map['compressionType'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputKeyTemplate: (() { final guardedValue = map['outputKeyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputPrefix: (() { final guardedValue = map['outputPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
