// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_get_bucket_objects_get_bucket_objects_args_doc}
/// Arguments for getBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_oss_get_bucket_objects_get_bucket_objects_args_doc}
class GetBucketObjectsArgs {
  /// Name of the bucket that contains the objects to find.
  final pulumi.Input<String> bucketName;
  /// Filter results by the given key prefix (such as "path/to/folder/logs-").
  final pulumi.Input<String>? keyPrefix;
  /// A regex string to filter results by key.
  final pulumi.Input<String>? keyRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBucketObjectsArgs].
  /// [bucketName] Name of the bucket that contains the objects to find.
  /// [keyPrefix] Filter results by the given key prefix (such as "path/to/folder/logs-").
  /// [keyRegex] A regex string to filter results by key.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetBucketObjectsArgs({
    required this.bucketName,
    this.keyPrefix,
    this.keyRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'keyPrefix': ?keyPrefix,
      'keyRegex': ?keyRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsArgs(
      bucketName: (map['bucketName'] as String).input(),
      keyPrefix: map['keyPrefix'] == null ? null : (map['keyPrefix']! as String).input(),
      keyRegex: map['keyRegex'] == null ? null : (map['keyRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

