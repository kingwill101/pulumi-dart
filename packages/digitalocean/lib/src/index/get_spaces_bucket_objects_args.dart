// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spaces_bucket_objects_get_spaces_bucket_objects_args_doc}
/// Arguments for getSpacesBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_bucket_objects_get_spaces_bucket_objects_args_doc}
class GetSpacesBucketObjectsArgs {
  /// Lists object keys in this Spaces bucket
  final pulumi.Input<String> bucket;
  /// A character used to group keys (Default: none)
  final pulumi.Input<String>? delimiter;
  /// Encodes keys using this method (Default: none; besides none, only "url" can be used)
  final pulumi.Input<String>? encodingType;
  /// Maximum object keys to return (Default: 1000)
  final pulumi.Input<int>? maxKeys;
  /// Limits results to object keys with this prefix (Default: none)
  final pulumi.Input<String>? prefix;
  /// The slug of the region where the bucket is stored.
  final pulumi.Input<String> region;

  /// Creates a new [GetSpacesBucketObjectsArgs].
  /// [bucket] Lists object keys in this Spaces bucket
  /// [delimiter] A character used to group keys (Default: none)
  /// [encodingType] Encodes keys using this method (Default: none; besides none, only "url" can be used)
  /// [maxKeys] Maximum object keys to return (Default: 1000)
  /// [prefix] Limits results to object keys with this prefix (Default: none)
  /// [region] The slug of the region where the bucket is stored.
  GetSpacesBucketObjectsArgs({
    required String bucket,
    String? delimiter,
    String? encodingType,
    int? maxKeys,
    String? prefix,
    required String region,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      delimiter = pulumi.Input.asOptionalInput<String>(delimiter),
      encodingType = pulumi.Input.asOptionalInput<String>(encodingType),
      maxKeys = pulumi.Input.asOptionalInput<int>(maxKeys),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'maxKeys': ?maxKeys,
      'prefix': ?prefix,
      'region': region,
    };
  }

  factory GetSpacesBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectsArgs(
      bucket: map['bucket'] as String,
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encodingType: map['encodingType'] == null ? null : map['encodingType'] as String,
      maxKeys: map['maxKeys'] == null ? null : map['maxKeys'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] as String,
    );
  }
}

