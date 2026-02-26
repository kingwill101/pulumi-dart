// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketObjects.
class GetBucketObjectsArgs {
  /// Lists object keys in this S3 bucket. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final Input<String> bucket;

  /// Character used to group keys (Default: none)
  final Input<String>? delimiter;

  /// Encodes keys using this method (Default: none; besides none, only "url" can be used)
  final Input<String>? encodingType;

  /// Boolean specifying whether to populate the owner list (Default: false)
  final Input<bool>? fetchOwner;

  /// Maximum object keys to return (Default: 1000)
  final Input<int>? maxKeys;

  /// Limits results to object keys with this prefix (Default: none)
  final Input<String>? prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  final Input<String>? startAfter;

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
      bucket: Input.asInput<String>(map['bucket']),
      delimiter: Input.asOptionalInput<String>(map['delimiter']),
      encodingType: Input.asOptionalInput<String>(map['encodingType']),
      fetchOwner: Input.asOptionalInput<bool>(map['fetchOwner']),
      maxKeys: Input.asOptionalInput<int>(map['maxKeys']),
      prefix: Input.asOptionalInput<String>(map['prefix']),
      region: Input.asOptionalInput<String>(map['region']),
      startAfter: Input.asOptionalInput<String>(map['startAfter']),
    );
  }
}
