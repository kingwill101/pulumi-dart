// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderBucketView.
class GetFolderBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> viewId;

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
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      location: pulumi.Input.asInput<String>(map['location']),
      viewId: pulumi.Input.asInput<String>(map['viewId']),
    );
  }
}
