// ignore_for_file: unused_element, unnecessary_cast


class GetResourceDirectoriesDirectory {
  /// The ID of resource directory.
  final String id;
  /// The ID of the master account.
  final String masterAccountId;
  /// The name of the master account.
  final String masterAccountName;
  /// The ID of the resource directory.
  final String resourceDirectoryId;
  /// The ID of the root folder.
  final String rootFolderId;
  /// (Available in 1.120.0+.) The status of the control policy.
  final String status;

  /// Creates a new [GetResourceDirectoriesDirectory].
  /// [id] The ID of resource directory.
  /// [masterAccountId] The ID of the master account.
  /// [masterAccountName] The name of the master account.
  /// [resourceDirectoryId] The ID of the resource directory.
  /// [rootFolderId] The ID of the root folder.
  /// [status] (Available in 1.120.0+.) The status of the control policy.
  GetResourceDirectoriesDirectory({
    required this.id,
    required this.masterAccountId,
    required this.masterAccountName,
    required this.resourceDirectoryId,
    required this.rootFolderId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'masterAccountId': masterAccountId,
      'masterAccountName': masterAccountName,
      'resourceDirectoryId': resourceDirectoryId,
      'rootFolderId': rootFolderId,
      'status': status,
    };
  }

  factory GetResourceDirectoriesDirectory.fromMap(Map<String, dynamic> map) {
    return GetResourceDirectoriesDirectory(
      id: map['id'] as String,
      masterAccountId: map['masterAccountId'] as String,
      masterAccountName: map['masterAccountName'] as String,
      resourceDirectoryId: map['resourceDirectoryId'] as String,
      rootFolderId: map['rootFolderId'] as String,
      status: map['status'] as String,
    );
  }
}

