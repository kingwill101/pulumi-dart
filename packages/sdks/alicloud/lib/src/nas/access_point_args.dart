// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_posix_user.dart';
import 'access_point_root_path_permission.dart';

/// {@template pulumi_nas_access_point_access_point_args_doc}
/// The set of arguments for AccessPoint.
/// {@endtemplate}
/// {@macro pulumi_nas_access_point_access_point_args_doc}
class AccessPointArgs {
  /// The name of the permission group.
  final pulumi.Input<String> accessGroup;
  /// The name of the access point.
  final pulumi.Input<String>? accessPointName;
  /// Specifies whether to enable the RAM policy. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enabledRam;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The Posix user. See `posix_user` below.
  final pulumi.Input<AccessPointPosixUser>? posixUser;
  /// The root directory of the access point.
  final pulumi.Input<String>? rootPath;
  /// Root permissions. See `root_path_permission` below.
  final pulumi.Input<AccessPointRootPathPermission>? rootPathPermission;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The vSwitch ID.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [AccessPointArgs].
  /// [accessGroup] The name of the permission group.
  /// [accessPointName] The name of the access point.
  /// [enabledRam] Specifies whether to enable the RAM policy. Default value: `false`. Valid values:
  /// [fileSystemId] The ID of the file system.
  /// [posixUser] The Posix user. See `posix_user` below.
  /// [rootPath] The root directory of the access point.
  /// [rootPathPermission] Root permissions. See `root_path_permission` below.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The vSwitch ID.
  AccessPointArgs({
    required this.accessGroup,
    this.accessPointName,
    this.enabledRam,
    required this.fileSystemId,
    this.posixUser,
    this.rootPath,
    this.rootPathPermission,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroup': accessGroup,
      'accessPointName': ?accessPointName,
      'enabledRam': ?enabledRam,
      'fileSystemId': fileSystemId,
      'posixUser': ?pulumi.Input.mapOptionalInputValue<AccessPointPosixUser, Map<String, dynamic>>(posixUser, (value) => value.toMap()),
      'rootPath': ?rootPath,
      'rootPathPermission': ?pulumi.Input.mapOptionalInputValue<AccessPointRootPathPermission, Map<String, dynamic>>(rootPathPermission, (value) => value.toMap()),
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs(
      accessGroup: (map['accessGroup'] as String).input(),
      accessPointName: map['accessPointName'] == null ? null : (map['accessPointName'] as String).input(),
      enabledRam: map['enabledRam'] == null ? null : (map['enabledRam'] as bool).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      posixUser: map['posixUser'] == null ? null : (AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>())).input(),
      rootPath: map['rootPath'] == null ? null : (map['rootPath'] as String).input(),
      rootPathPermission: map['rootPathPermission'] == null ? null : (AccessPointRootPathPermission.fromMap((map['rootPathPermission'] as Map).cast<String, dynamic>())).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

