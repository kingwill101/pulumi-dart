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
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? permission,
    pulumi.Output<String>? status,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      force = pulumi.Input.asOptionalInput<bool>(force),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      permission = pulumi.Input.asOptionalInput<String>(permission),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      permission: map['permission'] == null ? null : pulumi.Output.create<String>(map['permission'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

