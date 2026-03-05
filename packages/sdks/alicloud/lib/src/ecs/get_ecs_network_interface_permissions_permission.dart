// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsNetworkInterfacePermissionsPermission {
  /// Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  final pulumi.Input<String> accountId;
  /// The ID of the Network Interface Permission.
  final pulumi.Input<String> id;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The ID of the Network Interface Permissions.
  final pulumi.Input<String> networkInterfacePermissionId;
  /// The permissions of the Network Interface.
  final pulumi.Input<String> permission;
  /// Alibaba Cloud service name.
  final pulumi.Input<String> serviceName;
  /// The Status of the Network Interface Permissions.
  final pulumi.Input<String> status;

  /// Creates a new [GetEcsNetworkInterfacePermissionsPermission].
  /// [accountId] Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  /// [id] The ID of the Network Interface Permission.
  /// [networkInterfaceId] The ID of the network interface.
  /// [networkInterfacePermissionId] The ID of the Network Interface Permissions.
  /// [permission] The permissions of the Network Interface.
  /// [serviceName] Alibaba Cloud service name.
  /// [status] The Status of the Network Interface Permissions.
  GetEcsNetworkInterfacePermissionsPermission({
    required this.accountId,
    required this.id,
    required this.networkInterfaceId,
    required this.networkInterfacePermissionId,
    required this.permission,
    required this.serviceName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'id': id,
      'networkInterfaceId': networkInterfaceId,
      'networkInterfacePermissionId': networkInterfacePermissionId,
      'permission': permission,
      'serviceName': serviceName,
      'status': status,
    };
  }

  factory GetEcsNetworkInterfacePermissionsPermission.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacePermissionsPermission(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      networkInterfacePermissionId: pulumi.Input.fromValue(map['networkInterfacePermissionId'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

