// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_objects_get_objects_args_doc}
/// Arguments for getObjects.
/// {@endtemplate}
/// {@macro pulumi_s3_get_objects_get_objects_args_doc}
class GetObjectsArgs {
  /// Lists object keys in this S3 bucket. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final pulumi.Input<String> bucket;
  /// Character used to group keys (Default: none)
  final pulumi.Input<String?>? delimiter;
  /// Encodes keys using this method (Default: none; besides none, only "url" can be used)
  final pulumi.Input<String?>? encodingType;
  /// Boolean specifying whether to populate the owner list (Default: false)
  final pulumi.Input<bool?>? fetchOwner;
  /// Maximum object keys to return (Default: 1000)
  final pulumi.Input<int?>? maxKeys;
  /// Limits results to object keys with this prefix (Default: none)
  final pulumi.Input<String?>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If included, the only valid value is `requester`.
  final pulumi.Input<String?>? requestPayer;
  /// Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  final pulumi.Input<String?>? startAfter;

  /// Creates a new [GetObjectsArgs].
  /// [bucket] Lists object keys in this S3 bucket. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  /// [delimiter] Character used to group keys (Default: none)
  /// [encodingType] Encodes keys using this method (Default: none; besides none, only "url" can be used)
  /// [fetchOwner] Boolean specifying whether to populate the owner list (Default: false)
  /// [maxKeys] Maximum object keys to return (Default: 1000)
  /// [prefix] Limits results to object keys with this prefix (Default: none)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestPayer] Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If included, the only valid value is `requester`.
  /// [startAfter] Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)
  const GetObjectsArgs({
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
    return <String, dynamic>{
      'bucket': bucket,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'fetchOwner': ?fetchOwner,
      'maxKeys': ?maxKeys,
      'prefix': ?prefix,
      'region': ?region,
      'requestPayer': ?requestPayer,
      'startAfter': ?startAfter,
    };
  }

  factory GetObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectsArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingType: (() { final guardedValue = map['encodingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fetchOwner: (() { final guardedValue = map['fetchOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxKeys: (() { final guardedValue = map['maxKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPayer: (() { final guardedValue = map['requestPayer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAfter: (() { final guardedValue = map['startAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
