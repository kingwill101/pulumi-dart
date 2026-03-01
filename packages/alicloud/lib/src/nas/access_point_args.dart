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
    required String accessGroup,
    String? accessPointName,
    bool? enabledRam,
    required String fileSystemId,
    AccessPointPosixUser? posixUser,
    String? rootPath,
    AccessPointRootPathPermission? rootPathPermission,
    required String vpcId,
    required String vswitchId,
  }) :
      accessGroup = pulumi.Input.asInput<String>(accessGroup),
      accessPointName = pulumi.Input.asOptionalInput<String>(accessPointName),
      enabledRam = pulumi.Input.asOptionalInput<bool>(enabledRam),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      posixUser = pulumi.Input.asOptionalInput<AccessPointPosixUser>(posixUser),
      rootPath = pulumi.Input.asOptionalInput<String>(rootPath),
      rootPathPermission = pulumi.Input.asOptionalInput<AccessPointRootPathPermission>(rootPathPermission),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      accessGroup: map['accessGroup'] as String,
      accessPointName: map['accessPointName'] == null ? null : map['accessPointName'] as String,
      enabledRam: map['enabledRam'] == null ? null : map['enabledRam'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      posixUser: map['posixUser'] == null ? null : AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>()),
      rootPath: map['rootPath'] == null ? null : map['rootPath'] as String,
      rootPathPermission: map['rootPathPermission'] == null ? null : AccessPointRootPathPermission.fromMap((map['rootPathPermission'] as Map).cast<String, dynamic>()),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

