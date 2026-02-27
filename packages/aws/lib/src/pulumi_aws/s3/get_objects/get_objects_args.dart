// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getObjects.
class GetObjectsArgs {
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

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If included, the only valid value is `requester`.
  final pulumi.Input<String>? requestPayer;

  /// Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  final pulumi.Input<String>? startAfter;

  GetObjectsArgs({
    required this.bucket,
    this.delimiter,
    this.encodingType,
    this.fetchOwner,
    this.maxKeys,
    this.prefix,
    this.region,
    this.requestPayer,
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
    final requestPayerValue = requestPayer;
    if (requestPayerValue != null) {
      map['requestPayer'] = requestPayerValue;
    }
    final startAfterValue = startAfter;
    if (startAfterValue != null) {
      map['startAfter'] = startAfterValue;
    }
    return map;
  }

  factory GetObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectsArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      delimiter: pulumi.Input.asOptionalInput<String>(map['delimiter']),
      encodingType: pulumi.Input.asOptionalInput<String>(map['encodingType']),
      fetchOwner: pulumi.Input.asOptionalInput<bool>(map['fetchOwner']),
      maxKeys: pulumi.Input.asOptionalInput<int>(map['maxKeys']),
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestPayer: pulumi.Input.asOptionalInput<String>(map['requestPayer']),
      startAfter: pulumi.Input.asOptionalInput<String>(map['startAfter']),
    );
  }
}
