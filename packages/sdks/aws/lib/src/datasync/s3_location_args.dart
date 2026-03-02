// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_location_s3_config.dart';

/// {@template pulumi_datasync_s3_location_s3_location_args_doc}
/// The set of arguments for S3Location.
/// {@endtemplate}
/// {@macro pulumi_datasync_s3_location_s3_location_args_doc}
class S3LocationArgs {
  /// (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  final pulumi.Input<List<String>>? agentArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  final pulumi.Input<String> s3BucketArn;
  /// Configuration block containing information for connecting to S3.
  final pulumi.Input<S3LocationS3Config> s3Config;
  /// Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  final pulumi.Input<String>? s3StorageClass;
  /// Prefix to perform actions as source or destination.
  final pulumi.Input<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [S3LocationArgs].
  /// [agentArns] (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketArn] Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  /// [s3Config] Configuration block containing information for connecting to S3.
  /// [s3StorageClass] Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  /// [subdirectory] Prefix to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  S3LocationArgs({
    this.agentArns,
    this.region,
    required this.s3BucketArn,
    required this.s3Config,
    this.s3StorageClass,
    required this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': ?agentArns,
      'region': ?region,
      's3BucketArn': s3BucketArn,
      's3Config': pulumi.Input.mapInputValue<S3LocationS3Config, Map<String, dynamic>>(s3Config, (value) => value.toMap()),
      's3StorageClass': ?s3StorageClass,
      'subdirectory': subdirectory,
      'tags': ?tags,
    };
  }

  factory S3LocationArgs.fromMap(Map<String, dynamic> map) {
    return S3LocationArgs(
      agentArns: map['agentArns'] == null ? null : (((map['agentArns'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3BucketArn: (map['s3BucketArn'] as String).input(),
      s3Config: (S3LocationS3Config.fromMap((map['s3Config']! as Map).cast<String, dynamic>())).input(),
      s3StorageClass: map['s3StorageClass'] == null ? null : ((map['s3StorageClass'] as String).input()).input(),
      subdirectory: (map['subdirectory'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

