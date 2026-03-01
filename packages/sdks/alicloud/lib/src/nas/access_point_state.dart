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
    pulumi.Output<String>? accessGroup,
    pulumi.Output<String>? accessPointId,
    pulumi.Output<String>? accessPointName,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? enabledRam,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<AccessPointPosixUser>? posixUser,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? rootPath,
    pulumi.Output<AccessPointRootPathPermission>? rootPathPermission,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      accessGroup = pulumi.Input.asOptionalInput<String>(accessGroup),
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      accessPointName = pulumi.Input.asOptionalInput<String>(accessPointName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      enabledRam = pulumi.Input.asOptionalInput<bool>(enabledRam),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      posixUser = pulumi.Input.asOptionalInput<AccessPointPosixUser>(posixUser),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      rootPath = pulumi.Input.asOptionalInput<String>(rootPath),
      rootPathPermission = pulumi.Input.asOptionalInput<AccessPointRootPathPermission>(rootPathPermission),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      accessGroup: map['accessGroup'] == null ? null : pulumi.Output.create<String>(map['accessGroup'] as String),
      accessPointId: map['accessPointId'] == null ? null : pulumi.Output.create<String>(map['accessPointId'] as String),
      accessPointName: map['accessPointName'] == null ? null : pulumi.Output.create<String>(map['accessPointName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      enabledRam: map['enabledRam'] == null ? null : pulumi.Output.create<bool>(map['enabledRam'] as bool),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      posixUser: map['posixUser'] == null ? null : pulumi.Output.create<AccessPointPosixUser>(AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>())),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      rootPath: map['rootPath'] == null ? null : pulumi.Output.create<String>(map['rootPath'] as String),
      rootPathPermission: map['rootPathPermission'] == null ? null : pulumi.Output.create<AccessPointRootPathPermission>(AccessPointRootPathPermission.fromMap((map['rootPathPermission'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

