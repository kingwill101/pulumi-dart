// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderBucket.
class GetFolderBucketArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;

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
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      location: pulumi.Input.asInput<String>(map['location']),
    );
  }
}
