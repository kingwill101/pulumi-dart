// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_access_point_posix_user.dart';
import 'get_files_access_point_root_directory.dart';

/// Result data returned by getFilesAccessPoint.
class GetFilesAccessPointResult {
  /// ARN of the access point.
  final String arn;
  /// File system ID.
  final String fileSystemId;
  final String id;
  /// Access point name.
  final String name;
  /// AWS account ID of the owner.
  final String ownerId;
  /// POSIX user configuration. See `posixUser` below.
  final List<GetFilesAccessPointPosixUser>? posixUsers;
  final String region;
  /// Root directory configuration. See `rootDirectory` below.
  final List<GetFilesAccessPointRootDirectory>? rootDirectories;
  /// Access point status.
  final String status;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetFilesAccessPointResult].
  /// [arn] ARN of the access point.
  /// [fileSystemId] File system ID.
  /// [id] Required.
  /// [name] Access point name.
  /// [ownerId] AWS account ID of the owner.
  /// [posixUsers] POSIX user configuration. See `posixUser` below.
  /// [region] Required.
  /// [rootDirectories] Root directory configuration. See `rootDirectory` below.
  /// [status] Access point status.
  /// [tags] Map of tags assigned to the resource.
  const GetFilesAccessPointResult({
    required this.arn,
    required this.fileSystemId,
    required this.id,
    required this.name,
    required this.ownerId,
    this.posixUsers,
    required this.region,
    this.rootDirectories,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fileSystemId': fileSystemId,
      'id': id,
      'name': name,
      'ownerId': ownerId,
      'posixUsers': ?(() { final guardedValue = posixUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFilesAccessPointPosixUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': region,
      'rootDirectories': ?(() { final guardedValue = rootDirectories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFilesAccessPointRootDirectory, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': status,
      'tags': tags,
    };
  }

  factory GetFilesAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointResult(
      arn: map['arn'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFilesAccessPointPosixUser>(guardedValue, (value) => GetFilesAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: map['region'] as String,
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFilesAccessPointRootDirectory>(guardedValue, (value) => GetFilesAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
