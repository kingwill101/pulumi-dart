// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderBucketLink.
class GetFolderBucketLinkArgs {
  final Input<String> bucketId;
  final Input<String> folderId;
  final Input<String> linkId;
  final Input<String> location;

  GetFolderBucketLinkArgs({
    required this.bucketId,
    required this.folderId,
    required this.linkId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['folderId'] = folderId;
    map['linkId'] = linkId;
    map['location'] = location;
    return map;
  }

  factory GetFolderBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketLinkArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      folderId: Input.asInput<String>(map['folderId']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asInput<String>(map['location']),
    );
  }
}
