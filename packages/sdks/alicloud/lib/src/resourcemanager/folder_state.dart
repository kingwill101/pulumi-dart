// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// (Available since v1.259.0) The time when the folder was created.
  final pulumi.Input<String>? createTime;
  /// The name of the folder.
  final pulumi.Input<String>? folderName;
  /// The ID of the parent folder.
  final pulumi.Input<String>? parentFolderId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FolderState].
  /// [createTime] (Available since v1.259.0) The time when the folder was created.
  /// [folderName] The name of the folder.
  /// [parentFolderId] The ID of the parent folder.
  /// [tags] The tag of the resource.
  FolderState({
    this.createTime,
    this.folderName,
    this.parentFolderId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'folderName': ?folderName,
      'parentFolderId': ?parentFolderId,
      'tags': ?tags,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      folderName: map['folderName'] == null ? null : (map['folderName']! as String).input(),
      parentFolderId: map['parentFolderId'] == null ? null : (map['parentFolderId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

