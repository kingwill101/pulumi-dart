// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_network_interface_permissions_permission.dart';

/// Result data returned by getEcsNetworkInterfacePermissions.
class GetEcsNetworkInterfacePermissionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String networkInterfaceId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetEcsNetworkInterfacePermissionsPermission> permissions;
  final String? status;
  final int totalCount;

  /// Creates a new [GetEcsNetworkInterfacePermissionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [networkInterfaceId] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [permissions] Required.
  /// [status] Optional.
  /// [totalCount] Required.
  GetEcsNetworkInterfacePermissionsResult({
    required this.id,
    required this.ids,
    required this.networkInterfaceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.permissions,
    this.status,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'networkInterfaceId': networkInterfaceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'permissions': pulumi.Input.encodeList<GetEcsNetworkInterfacePermissionsPermission, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'status': ?status,
      'totalCount': totalCount,
    };
  }

  factory GetEcsNetworkInterfacePermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacePermissionsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      networkInterfaceId: map['networkInterfaceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      permissions: pulumi.Input.decodeList<GetEcsNetworkInterfacePermissionsPermission>(map['permissions']!, (value) => GetEcsNetworkInterfacePermissionsPermission.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalCount: map['totalCount'] as int,
    );
  }
}

