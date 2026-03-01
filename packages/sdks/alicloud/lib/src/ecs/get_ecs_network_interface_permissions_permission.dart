// ignore_for_file: unused_element, unnecessary_cast


class GetEcsNetworkInterfacePermissionsPermission {
  /// Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  final String accountId;
  /// The ID of the Network Interface Permission.
  final String id;
  /// The ID of the network interface.
  final String networkInterfaceId;
  /// The ID of the Network Interface Permissions.
  final String networkInterfacePermissionId;
  /// The permissions of the Network Interface.
  final String permission;
  /// Alibaba Cloud service name.
  final String serviceName;
  /// The Status of the Network Interface Permissions.
  final String status;

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
      accountId: map['accountId'] as String,
      id: map['id'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      networkInterfacePermissionId: map['networkInterfacePermissionId'] as String,
      permission: map['permission'] as String,
      serviceName: map['serviceName'] as String,
      status: map['status'] as String,
    );
  }
}

