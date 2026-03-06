// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_network_interface_permission_ecs_network_interface_permission_args_doc}
/// The set of arguments for EcsNetworkInterfacePermission.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_network_interface_permission_ecs_network_interface_permission_args_doc}
class EcsNetworkInterfacePermissionArgs {
  /// Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  final pulumi.Input<String> accountId;
  /// Whether to force deletion of Network Interface Permission. Default value: `true`.
  final pulumi.Input<bool>? force;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The permissions of the Network Interface. Valid values: `InstanceAttach`. `InstanceAttach`: Allows authorized users to mount your ENI to the other ECS instance. The ECS instance must be in the same zone as the ENI.
  final pulumi.Input<String> permission;

  /// Creates a new [EcsNetworkInterfacePermissionArgs].
  /// [accountId] Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  /// [force] Whether to force deletion of Network Interface Permission. Default value: `true`.
  /// [networkInterfaceId] The ID of the network interface.
  /// [permission] The permissions of the Network Interface. Valid values: `InstanceAttach`. `InstanceAttach`: Allows authorized users to mount your ENI to the other ECS instance. The ECS instance must be in the same zone as the ENI.
  const EcsNetworkInterfacePermissionArgs({
    required this.accountId,
    this.force,
    required this.networkInterfaceId,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'force': ?force,
      'networkInterfaceId': networkInterfaceId,
      'permission': permission,
    };
  }

  factory EcsNetworkInterfacePermissionArgs.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfacePermissionArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}

