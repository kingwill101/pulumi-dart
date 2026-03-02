// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_objects_get_bucket_objects_args_doc}
/// Arguments for getBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_objects_get_bucket_objects_args_doc}
class GetBucketObjectsArgs {
  /// Lists object keys in this S3 bucket. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final pulumi.Input<String> bucket;
  /// Character used to group keys (Default: none)
  final pulumi.Input<String>? delimiter;
  /// Encodes keys using this method (Default: none; besides none, only "url" can be used)
  final pulumi.Input<String>? encodingType;
  /// Boolean specifying whether to populate the owner list (Default: false)
  final pulumi.Input<bool>? fetchOwner;
  /// Maximum object keys to return (Default: 1000)
  final pulumi.Input<int>? maxKeys;
  /// Limits results to object keys with this prefix (Default: none)
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  final pulumi.Input<String>? startAfter;

  /// Creates a new [GetBucketObjectsArgs].
  /// [bucket] Lists object keys in this S3 bucket. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  /// [delimiter] Character used to group keys (Default: none)
  /// [encodingType] Encodes keys using this method (Default: none; besides none, only "url" can be used)
  /// [fetchOwner] Boolean specifying whether to populate the owner list (Default: false)
  /// [maxKeys] Maximum object keys to return (Default: 1000)
  /// [prefix] Limits results to object keys with this prefix (Default: none)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startAfter] Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  GetBucketObjectsArgs({
    required this.bucket,
    this.delimiter,
    this.encodingType,
    this.fetchOwner,
    this.maxKeys,
    this.prefix,
    this.region,
    this.startAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'fetchOwner': ?fetchOwner,
      'maxKeys': ?maxKeys,
      'prefix': ?prefix,
      'region': ?region,
      'startAfter': ?startAfter,
    };
  }

  factory GetBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsArgs(
      bucket: (map['bucket'] as String).input(),
      delimiter: map['delimiter'] == null ? null : (map['delimiter'] as String).input(),
      encodingType: map['encodingType'] == null ? null : (map['encodingType'] as String).input(),
      fetchOwner: map['fetchOwner'] == null ? null : (map['fetchOwner'] as bool).input(),
      maxKeys: map['maxKeys'] == null ? null : (map['maxKeys'] as int).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      startAfter: map['startAfter'] == null ? null : (map['startAfter'] as String).input(),
    );
  }
}

