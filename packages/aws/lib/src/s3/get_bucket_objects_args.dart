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
    required String bucket,
    String? delimiter,
    String? encodingType,
    bool? fetchOwner,
    int? maxKeys,
    String? prefix,
    String? region,
    String? startAfter,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        delimiter = pulumi.Input.asOptionalInput<String>(delimiter),
        encodingType = pulumi.Input.asOptionalInput<String>(encodingType),
        fetchOwner = pulumi.Input.asOptionalInput<bool>(fetchOwner),
        maxKeys = pulumi.Input.asOptionalInput<int>(maxKeys),
        prefix = pulumi.Input.asOptionalInput<String>(prefix),
        region = pulumi.Input.asOptionalInput<String>(region),
        startAfter = pulumi.Input.asOptionalInput<String>(startAfter);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final encodingTypeValue = encodingType;
    if (encodingTypeValue != null) {
      map['encodingType'] = encodingTypeValue;
    }
    final fetchOwnerValue = fetchOwner;
    if (fetchOwnerValue != null) {
      map['fetchOwner'] = fetchOwnerValue;
    }
    final maxKeysValue = maxKeys;
    if (maxKeysValue != null) {
      map['maxKeys'] = maxKeysValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startAfterValue = startAfter;
    if (startAfterValue != null) {
      map['startAfter'] = startAfterValue;
    }
    return map;
  }

  factory GetBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsArgs(
      bucket: map['bucket'] as String,
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encodingType:
          map['encodingType'] == null ? null : map['encodingType'] as String,
      fetchOwner: map['fetchOwner'] == null ? null : map['fetchOwner'] as bool,
      maxKeys: map['maxKeys'] == null ? null : map['maxKeys'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      startAfter:
          map['startAfter'] == null ? null : map['startAfter'] as String,
    );
  }
}
