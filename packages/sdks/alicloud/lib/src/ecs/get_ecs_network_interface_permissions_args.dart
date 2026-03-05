// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_network_interface_permissions_get_ecs_network_interface_permissions_args_doc}
/// Arguments for getEcsNetworkInterfacePermissions.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_network_interface_permissions_get_ecs_network_interface_permissions_args_doc}
class GetEcsNetworkInterfacePermissionsArgs {
  /// A list of Network Interface Permission IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Status of the Network Interface Permissions. Valid values: `Granted`, `Pending`, `Revoked`, `Revoking`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEcsNetworkInterfacePermissionsArgs].
  /// [ids] A list of Network Interface Permission IDs.
  /// [networkInterfaceId] The ID of the network interface.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The Status of the Network Interface Permissions. Valid values: `Granted`, `Pending`, `Revoked`, `Revoking`.
  GetEcsNetworkInterfacePermissionsArgs({
    this.ids,
    required this.networkInterfaceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'networkInterfaceId': networkInterfaceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetEcsNetworkInterfacePermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacePermissionsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

