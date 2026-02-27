// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../s3_location_s3_config/s3_location_s3_config.dart';

/// The set of arguments for S3Location.
class S3LocationArgs {
  /// (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  final Input<List<String>>? agentArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  final Input<String> s3BucketArn;

  /// Configuration block containing information for connecting to S3.
  final Input<S3LocationS3Config> s3Config;

  /// Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  final Input<String>? s3StorageClass;

  /// Prefix to perform actions as source or destination.
  final Input<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final agentArnsValue = agentArns;
    if (agentArnsValue != null) {
      map['agentArns'] = agentArnsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3BucketArn'] = s3BucketArn;
    map['s3Config'] =
        Input.mapInputValue<S3LocationS3Config, Map<String, dynamic>>(
            s3Config, (value) => value.toMap());
    final s3StorageClassValue = s3StorageClass;
    if (s3StorageClassValue != null) {
      map['s3StorageClass'] = s3StorageClassValue;
    }
    map['subdirectory'] = subdirectory;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory S3LocationArgs.fromMap(Map<String, dynamic> map) {
    return S3LocationArgs(
      agentArns: Input.asOptionalInput<List<String>>(map['agentArns']),
      region: Input.asOptionalInput<String>(map['region']),
      s3BucketArn: Input.asInput<String>(map['s3BucketArn']),
      s3Config: Input.asInput<S3LocationS3Config>(map['s3Config']),
      s3StorageClass: Input.asOptionalInput<String>(map['s3StorageClass']),
      subdirectory: Input.asInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
