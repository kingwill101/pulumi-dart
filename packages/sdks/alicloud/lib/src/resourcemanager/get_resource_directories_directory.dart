// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceDirectoriesDirectory {
  /// The ID of resource directory.
  final pulumi.Input<String> id;
  /// The ID of the master account.
  final pulumi.Input<String> masterAccountId;
  /// The name of the master account.
  final pulumi.Input<String> masterAccountName;
  /// The ID of the resource directory.
  final pulumi.Input<String> resourceDirectoryId;
  /// The ID of the root folder.
  final pulumi.Input<String> rootFolderId;
  /// (Available in 1.120.0+.) The status of the control policy.
  final pulumi.Input<String> status;

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
      id: (map['id'] as String).input(),
      masterAccountId: (map['masterAccountId'] as String).input(),
      masterAccountName: (map['masterAccountName'] as String).input(),
      resourceDirectoryId: (map['resourceDirectoryId'] as String).input(),
      rootFolderId: (map['rootFolderId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

