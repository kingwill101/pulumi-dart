// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFolder.
class GetFolderCloudresourcemanagerV3Result {
  /// Timestamp when the folder was created.
  final String createTime;

  /// Timestamp when the folder was requested to be deleted.
  final String deleteTime;

  /// The folder's display name. A folder's display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  final String displayName;

  /// A checksum computed by the server based on the current value of the folder resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// The resource name of the folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  final String name;

  /// The folder's parent's resource name. Updates to the folder's parent must be performed using MoveFolder.
  final String parent;

  /// The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.
  final String state;

  /// Timestamp when the folder was last modified.
  final String updateTime;

  /// Creates a new [GetFolderCloudresourcemanagerV3Result].
  /// [createTime] Timestamp when the folder was created.
  /// [deleteTime] Timestamp when the folder was requested to be deleted.
  /// [displayName] The folder's display name. A folder's display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  /// [etag] A checksum computed by the server based on the current value of the folder resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [name] The resource name of the folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  /// [parent] The folder's parent's resource name. Updates to the folder's parent must be performed using MoveFolder.
  /// [state] The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.
  /// [updateTime] Timestamp when the folder was last modified.
  GetFolderCloudresourcemanagerV3Result({
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.parent,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'name': name,
      'parent': parent,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetFolderCloudresourcemanagerV3Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFolderCloudresourcemanagerV3Result(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
