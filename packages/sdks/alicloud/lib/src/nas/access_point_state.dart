// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_posix_user.dart';
import 'access_point_root_path_permission.dart';

/// Input properties used for looking up and filtering AccessPoint resources.
class AccessPointState {
  /// The name of the permission group.
  final pulumi.Input<String>? accessGroup;
  /// The ID of the access point.
  final pulumi.Input<String>? accessPointId;
  /// The name of the access point.
  final pulumi.Input<String>? accessPointName;
  /// The time when the access point was created.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable the RAM policy. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enabledRam;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// The Posix user. See `posix_user` below.
  final pulumi.Input<AccessPointPosixUser>? posixUser;
  /// (Available since v1.254.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// The root directory of the access point.
  final pulumi.Input<String>? rootPath;
  /// Root permissions. See `root_path_permission` below.
  final pulumi.Input<AccessPointRootPathPermission>? rootPathPermission;
  /// The status of the access point.
  final pulumi.Input<String>? status;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [AccessPointState].
  /// [accessGroup] The name of the permission group.
  /// [accessPointId] The ID of the access point.
  /// [accessPointName] The name of the access point.
  /// [createTime] The time when the access point was created.
  /// [enabledRam] Specifies whether to enable the RAM policy. Default value: `false`. Valid values:
  /// [fileSystemId] The ID of the file system.
  /// [posixUser] The Posix user. See `posix_user` below.
  /// [regionId] (Available since v1.254.0) The region ID.
  /// [rootPath] The root directory of the access point.
  /// [rootPathPermission] Root permissions. See `root_path_permission` below.
  /// [status] The status of the access point.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The vSwitch ID.
  AccessPointState({
    this.accessGroup,
    this.accessPointId,
    this.accessPointName,
    this.createTime,
    this.enabledRam,
    this.fileSystemId,
    this.posixUser,
    this.regionId,
    this.rootPath,
    this.rootPathPermission,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroup': ?accessGroup,
      'accessPointId': ?accessPointId,
      'accessPointName': ?accessPointName,
      'createTime': ?createTime,
      'enabledRam': ?enabledRam,
      'fileSystemId': ?fileSystemId,
      'posixUser': ?pulumi.Input.mapOptionalInputValue<AccessPointPosixUser, Map<String, dynamic>>(posixUser, (value) => value.toMap()),
      'regionId': ?regionId,
      'rootPath': ?rootPath,
      'rootPathPermission': ?pulumi.Input.mapOptionalInputValue<AccessPointRootPathPermission, Map<String, dynamic>>(rootPathPermission, (value) => value.toMap()),
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory AccessPointState.fromMap(Map<String, dynamic> map) {
    return AccessPointState(
      accessGroup: map['accessGroup'] == null ? null : (map['accessGroup'] as String).input(),
      accessPointId: map['accessPointId'] == null ? null : (map['accessPointId'] as String).input(),
      accessPointName: map['accessPointName'] == null ? null : (map['accessPointName'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      enabledRam: map['enabledRam'] == null ? null : (map['enabledRam'] as bool).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      posixUser: map['posixUser'] == null ? null : (AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>())).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      rootPath: map['rootPath'] == null ? null : (map['rootPath'] as String).input(),
      rootPathPermission: map['rootPathPermission'] == null ? null : (AccessPointRootPathPermission.fromMap((map['rootPathPermission'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

