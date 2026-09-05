// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_access_point_posix_user.dart';
import 'get_files_access_point_root_directory.dart';

/// Result data returned by getFilesAccessPoint.
class GetFilesAccessPointResult {
  /// ARN of the access point.
  final String? arn;
  /// File system ID.
  final String? fileSystemId;
  final String? id;
  /// Access point name.
  final String? name;
  /// AWS account ID of the owner.
  final String? ownerId;
  /// POSIX user configuration. See `posixUser` below.
  final List<GetFilesAccessPointPosixUser>? posixUsers;
  final String? region;
  /// Root directory configuration. See `rootDirectory` below.
  final List<GetFilesAccessPointRootDirectory>? rootDirectories;
  /// Access point status.
  final String? status;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetFilesAccessPointResult].
  /// [arn] ARN of the access point.
  /// [fileSystemId] File system ID.
  /// [id] Optional.
  /// [name] Access point name.
  /// [ownerId] AWS account ID of the owner.
  /// [posixUsers] POSIX user configuration. See `posixUser` below.
  /// [region] Optional.
  /// [rootDirectories] Root directory configuration. See `rootDirectory` below.
  /// [status] Access point status.
  /// [tags] Map of tags assigned to the resource.
  const GetFilesAccessPointResult({
    this.arn,
    this.fileSystemId,
    this.id,
    this.name,
    this.ownerId,
    this.posixUsers,
    this.region,
    this.rootDirectories,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'name': ?name,
      'ownerId': ?ownerId,
      'posixUsers': ?(() { final guardedValue = posixUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFilesAccessPointPosixUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'rootDirectories': ?(() { final guardedValue = rootDirectories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFilesAccessPointRootDirectory, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetFilesAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFilesAccessPointPosixUser>(guardedValue, (value) => GetFilesAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFilesAccessPointRootDirectory>(guardedValue, (value) => GetFilesAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
