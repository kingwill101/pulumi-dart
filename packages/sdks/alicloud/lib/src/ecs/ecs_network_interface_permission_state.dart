// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsNetworkInterfacePermission resources.
class EcsNetworkInterfacePermissionState {
  /// Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  final pulumi.Input<String>? accountId;
  /// Whether to force deletion of Network Interface Permission. Default value: `true`.
  final pulumi.Input<bool>? force;
  /// The ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// The permissions of the Network Interface. Valid values: `InstanceAttach`. `InstanceAttach`: Allows authorized users to mount your ENI to the other ECS instance. The ECS instance must be in the same zone as the ENI.
  final pulumi.Input<String>? permission;
  /// The Status of the Network Interface Permissions. Valid values: `Pending`, `Granted`, `Revoking`, `Revoked`.
  final pulumi.Input<String>? status;

  /// Creates a new [EcsNetworkInterfacePermissionState].
  /// [accountId] Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  /// [force] Whether to force deletion of Network Interface Permission. Default value: `true`.
  /// [networkInterfaceId] The ID of the network interface.
  /// [permission] The permissions of the Network Interface. Valid values: `InstanceAttach`. `InstanceAttach`: Allows authorized users to mount your ENI to the other ECS instance. The ECS instance must be in the same zone as the ENI.
  /// [status] The Status of the Network Interface Permissions. Valid values: `Pending`, `Granted`, `Revoking`, `Revoked`.
  EcsNetworkInterfacePermissionState({
    this.accountId,
    this.force,
    this.networkInterfaceId,
    this.permission,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'force': ?force,
      'networkInterfaceId': ?networkInterfaceId,
      'permission': ?permission,
      'status': ?status,
    };
  }

  factory EcsNetworkInterfacePermissionState.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfacePermissionState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      permission: map['permission'] == null ? null : (map['permission']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

