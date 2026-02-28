// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_bucket_args_doc}
/// Arguments for getFolderBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_bucket_args_doc}
class GetFolderBucketArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;

  /// Creates a new [GetFolderBucketArgs].
  /// [bucketId] Required.
  /// [folderId] Required.
  /// [location] Required.
  GetFolderBucketArgs({
    required String bucketId,
    required String folderId,
    required String location,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      folderId = pulumi.Input.asInput<String>(folderId),
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'folderId': folderId,
      'location': location,
    };
  }

  factory GetFolderBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketArgs(
      bucketId: map['bucketId'] as String,
      folderId: map['folderId'] as String,
      location: map['location'] as String,
    );
  }
}

