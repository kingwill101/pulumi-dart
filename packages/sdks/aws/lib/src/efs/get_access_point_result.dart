// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_posix_user.dart';
import 'get_access_point_root_directory.dart';

/// Result data returned by getAccessPoint.
class GetAccessPointResult {
  final String accessPointId;

  /// Amazon Resource Name of the file system.
  final String arn;

  /// Amazon Resource Name of the file system.
  final String fileSystemArn;

  /// ID of the file system for which the access point is intended.
  final String fileSystemId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ownerId;

  /// Single element list containing operating system user and group applied to all file system requests made using the access point.
  final List<GetAccessPointPosixUser> posixUsers;
  final String region;

  /// Single element list containing information on the directory on the Amazon EFS file system that the access point provides access to.
  final List<GetAccessPointRootDirectory> rootDirectories;

  /// Key-value mapping of resource tags.
  final Map<String, String> tags;

  /// Creates a new [GetAccessPointResult].
  /// [accessPointId] Required.
  /// [arn] Amazon Resource Name of the file system.
  /// [fileSystemArn] Amazon Resource Name of the file system.
  /// [fileSystemId] ID of the file system for which the access point is intended.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ownerId] Required.
  /// [posixUsers] Single element list containing operating system user and group applied to all file system requests made using the access point.
  /// [region] Required.
  /// [rootDirectories] Single element list containing information on the directory on the Amazon EFS file system that the access point provides access to.
  /// [tags] Key-value mapping of resource tags.
  GetAccessPointResult({
    required this.accessPointId,
    required this.arn,
    required this.fileSystemArn,
    required this.fileSystemId,
    required this.id,
    required this.ownerId,
    required this.posixUsers,
    required this.region,
    required this.rootDirectories,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'arn': arn,
      'fileSystemArn': fileSystemArn,
      'fileSystemId': fileSystemId,
      'id': id,
      'ownerId': ownerId,
      'posixUsers':
          pulumi.Input.encodeList<
            GetAccessPointPosixUser,
            Map<String, dynamic>
          >(posixUsers, (value) => value.toMap()),
      'region': region,
      'rootDirectories':
          pulumi.Input.encodeList<
            GetAccessPointRootDirectory,
            Map<String, dynamic>
          >(rootDirectories, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointResult(
      accessPointId: map['accessPointId'] as String,
      arn: map['arn'] as String,
      fileSystemArn: map['fileSystemArn'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      posixUsers: pulumi.Input.decodeList<GetAccessPointPosixUser>(
        map['posixUsers']!,
        (value) => GetAccessPointPosixUser.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] as String,
      rootDirectories: pulumi.Input.decodeList<GetAccessPointRootDirectory>(
        map['rootDirectories']!,
        (value) => GetAccessPointRootDirectory.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
