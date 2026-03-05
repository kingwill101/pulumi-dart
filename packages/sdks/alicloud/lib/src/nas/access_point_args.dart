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
      accessGroup: pulumi.Input.fromValue(map['accessGroup'] as String),
      accessPointName: (() { final guardedValue = map['accessPointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledRam: (() { final guardedValue = map['enabledRam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      posixUser: (() { final guardedValue = map['posixUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointPosixUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootPath: (() { final guardedValue = map['rootPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootPathPermission: (() { final guardedValue = map['rootPathPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointRootPathPermission.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

