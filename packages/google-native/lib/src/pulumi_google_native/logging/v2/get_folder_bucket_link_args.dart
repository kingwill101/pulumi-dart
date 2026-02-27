// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderBucketLink.
class GetFolderBucketLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;

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
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      linkId: pulumi.Input.asInput<String>(map['linkId']),
      location: pulumi.Input.asInput<String>(map['location']),
    );
  }
}
