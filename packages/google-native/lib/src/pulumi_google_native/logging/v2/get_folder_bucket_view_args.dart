// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderBucketView.
class GetFolderBucketViewArgs {
  final Input<String> bucketId;
  final Input<String> folderId;
  final Input<String> location;
  final Input<String> viewId;

  GetFolderBucketViewArgs({
    required this.bucketId,
    required this.folderId,
    required this.location,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['folderId'] = folderId;
    map['location'] = location;
    map['viewId'] = viewId;
    return map;
  }

  factory GetFolderBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketViewArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asInput<String>(map['location']),
      viewId: Input.asInput<String>(map['viewId']),
    );
  }
}
