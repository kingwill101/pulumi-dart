// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_interfaces_interface.dart';

/// Result data returned by getRouterInterfaces.
class GetRouterInterfacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of router interface IDs.
  final List<String> ids;
  /// A list of router interfaces. Each element contains the following attributes:
  final List<GetRouterInterfacesInterface> interfaces;
  final String? nameRegex;
  /// A list of router interface names.
  final List<String> names;
  /// Peer router interface ID.
  final String? oppositeInterfaceId;
  /// Account ID of the owner of the peer router interface.
  final String? oppositeInterfaceOwnerId;
  final String? outputFile;
  /// Router interface role. Possible values: `InitiatingSide` and `AcceptingSide`.
  final String? role;
  /// ID of the VRouter located in the local region.
  final String? routerId;
  /// Router type in the local region. Possible values: `VRouter` and `VBR`.
  final String? routerType;
  /// Router interface specification. Possible values: `Small.1`, `Middle.1`, `Large.2`, ...etc.
  final String? specification;
  /// Router interface status. Possible values: `Active`, `Inactive` and `Idle`.
  final String? status;

  /// Creates a new [GetRouterInterfacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of router interface IDs.
  /// [interfaces] A list of router interfaces. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of router interface names.
  /// [oppositeInterfaceId] Peer router interface ID.
  /// [oppositeInterfaceOwnerId] Account ID of the owner of the peer router interface.
  /// [outputFile] Optional.
  /// [role] Router interface role. Possible values: `InitiatingSide` and `AcceptingSide`.
  /// [routerId] ID of the VRouter located in the local region.
  /// [routerType] Router type in the local region. Possible values: `VRouter` and `VBR`.
  /// [specification] Router interface specification. Possible values: `Small.1`, `Middle.1`, `Large.2`, ...etc.
  /// [status] Router interface status. Possible values: `Active`, `Inactive` and `Idle`.
  GetRouterInterfacesResult({
    required this.id,
    required this.ids,
    required this.interfaces,
    this.nameRegex,
    required this.names,
    this.oppositeInterfaceId,
    this.oppositeInterfaceOwnerId,
    this.outputFile,
    this.role,
    this.routerId,
    this.routerType,
    this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'interfaces': pulumi.Input.encodeList<GetRouterInterfacesInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'oppositeInterfaceId': ?oppositeInterfaceId,
      'oppositeInterfaceOwnerId': ?oppositeInterfaceOwnerId,
      'outputFile': ?outputFile,
      'role': ?role,
      'routerId': ?routerId,
      'routerType': ?routerType,
      'specification': ?specification,
      'status': ?status,
    };
  }

  factory GetRouterInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      interfaces: pulumi.Input.decodeList<GetRouterInterfacesInterface>(map['interfaces'], (value) => GetRouterInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : map['oppositeInterfaceId'] as String,
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : map['oppositeInterfaceOwnerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      routerId: map['routerId'] == null ? null : map['routerId'] as String,
      routerType: map['routerType'] == null ? null : map['routerType'] as String,
      specification: map['specification'] == null ? null : map['specification'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

