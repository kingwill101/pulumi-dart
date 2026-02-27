// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFolderBucket.
class GetFolderBucketArgs {
  final Input<String> bucketId;
  final Input<String> folderId;
  final Input<String> location;

  GetFolderBucketArgs({
    required this.bucketId,
    required this.folderId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['folderId'] = folderId;
    map['location'] = location;
    return map;
  }

  factory GetFolderBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asInput<String>(map['location']),
    );
  }
}
