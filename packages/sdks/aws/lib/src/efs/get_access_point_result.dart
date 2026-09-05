// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_posix_user.dart';
import 'get_access_point_root_directory.dart';

/// Result data returned by getAccessPoint.
class GetAccessPointResult {
  final String? accessPointId;
  /// ARN of the file system.
  final String? arn;
  /// ARN of the file system.
  final String? fileSystemArn;
  /// ID of the file system for which the access point is intended.
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ownerId;
  /// Single element list containing operating system user and group applied to all file system requests made using the access point.
  final List<GetAccessPointPosixUser>? posixUsers;
  final String? region;
  /// Single element list containing information on the directory on the Amazon EFS file system that the access point provides access to.
  final List<GetAccessPointRootDirectory>? rootDirectories;
  /// Key-value mapping of resource tags.
  final Map<String, String>? tags;

  /// Creates a new [GetAccessPointResult].
  /// [accessPointId] Optional.
  /// [arn] ARN of the file system.
  /// [fileSystemArn] ARN of the file system.
  /// [fileSystemId] ID of the file system for which the access point is intended.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ownerId] Optional.
  /// [posixUsers] Single element list containing operating system user and group applied to all file system requests made using the access point.
  /// [region] Optional.
  /// [rootDirectories] Single element list containing information on the directory on the Amazon EFS file system that the access point provides access to.
  /// [tags] Key-value mapping of resource tags.
  const GetAccessPointResult({
    this.accessPointId,
    this.arn,
    this.fileSystemArn,
    this.fileSystemId,
    this.id,
    this.ownerId,
    this.posixUsers,
    this.region,
    this.rootDirectories,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'arn': ?arn,
      'fileSystemArn': ?fileSystemArn,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'ownerId': ?ownerId,
      'posixUsers': ?(() { final guardedValue = posixUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessPointPosixUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'rootDirectories': ?(() { final guardedValue = rootDirectories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessPointRootDirectory, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointResult(
      accessPointId: (() { final guardedValue = map['accessPointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemArn: (() { final guardedValue = map['fileSystemArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessPointPosixUser>(guardedValue, (value) => GetAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessPointRootDirectory>(guardedValue, (value) => GetAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
