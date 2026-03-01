// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_location_s3_config.dart';

/// Input properties used for looking up and filtering S3Location resources.
class S3LocationState {
  /// (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  final pulumi.Input<List<String>>? agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  final pulumi.Input<String>? s3BucketArn;
  /// Configuration block containing information for connecting to S3.
  final pulumi.Input<S3LocationS3Config>? s3Config;
  /// Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  final pulumi.Input<String>? s3StorageClass;
  /// Prefix to perform actions as source or destination.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;

  /// Creates a new [S3LocationState].
  /// [agentArns] (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketArn] Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  /// [s3Config] Configuration block containing information for connecting to S3.
  /// [s3StorageClass] Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  /// [subdirectory] Prefix to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  S3LocationState({
    pulumi.Output<List<String>>? agentArns,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3BucketArn,
    pulumi.Output<S3LocationS3Config>? s3Config,
    pulumi.Output<String>? s3StorageClass,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      agentArns = pulumi.Input.asOptionalInput<List<String>>(agentArns),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3BucketArn = pulumi.Input.asOptionalInput<String>(s3BucketArn),
      s3Config = pulumi.Input.asOptionalInput<S3LocationS3Config>(s3Config),
      s3StorageClass = pulumi.Input.asOptionalInput<String>(s3StorageClass),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': ?agentArns,
      'arn': ?arn,
      'region': ?region,
      's3BucketArn': ?s3BucketArn,
      's3Config': ?pulumi.Input.mapOptionalInputValue<S3LocationS3Config, Map<String, dynamic>>(s3Config, (value) => value.toMap()),
      's3StorageClass': ?s3StorageClass,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory S3LocationState.fromMap(Map<String, dynamic> map) {
    return S3LocationState(
      agentArns: map['agentArns'] == null ? null : pulumi.Output.create<List<String>>((map['agentArns'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3BucketArn: map['s3BucketArn'] == null ? null : pulumi.Output.create<String>(map['s3BucketArn'] as String),
      s3Config: map['s3Config'] == null ? null : pulumi.Output.create<S3LocationS3Config>(S3LocationS3Config.fromMap((map['s3Config'] as Map).cast<String, dynamic>())),
      s3StorageClass: map['s3StorageClass'] == null ? null : pulumi.Output.create<String>(map['s3StorageClass'] as String),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

