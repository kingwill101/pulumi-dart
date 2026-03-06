// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_router_interfaces_get_router_interfaces_args_doc}
/// Arguments for getRouterInterfaces.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_router_interfaces_get_router_interfaces_args_doc}
class GetRouterInterfacesArgs {
  /// A list of router interface IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string used to filter by router interface name.
  final pulumi.Input<String>? nameRegex;
  /// ID of the peer router interface.
  final pulumi.Input<String>? oppositeInterfaceId;
  /// Account ID of the owner of the peer router interface.
  final pulumi.Input<String>? oppositeInterfaceOwnerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Role of the router interface. Valid values are `InitiatingSide` (connection initiator) and
  /// `AcceptingSide` (connection receiver). The value of this parameter must be `InitiatingSide` if the `router_type` is set to `VBR`.
  final pulumi.Input<String>? role;
  /// ID of the VRouter located in the local region.
  final pulumi.Input<String>? routerId;
  /// Router type in the local region. Valid values are `VRouter` and `VBR` (physical connection).
  final pulumi.Input<String>? routerType;
  /// Specification of the link, such as `Small.1` (10Mb), `Middle.1` (100Mb), `Large.2` (2Gb), ...etc.
  final pulumi.Input<String>? specification;
  /// Expected status. Valid values are `Active`, `Inactive` and `Idle`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRouterInterfacesArgs].
  /// [ids] A list of router interface IDs.
  /// [nameRegex] A regex string used to filter by router interface name.
  /// [oppositeInterfaceId] ID of the peer router interface.
  /// [oppositeInterfaceOwnerId] Account ID of the owner of the peer router interface.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [role] Role of the router interface. Valid values are `InitiatingSide` (connection initiator) and
  /// [routerId] ID of the VRouter located in the local region.
  /// [routerType] Router type in the local region. Valid values are `VRouter` and `VBR` (physical connection).
  /// [specification] Specification of the link, such as `Small.1` (10Mb), `Middle.1` (100Mb), `Large.2` (2Gb), ...etc.
  /// [status] Expected status. Valid values are `Active`, `Inactive` and `Idle`.
  const GetRouterInterfacesArgs({
    this.ids,
    this.nameRegex,
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
      'ids': ?ids,
      'nameRegex': ?nameRegex,
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

  factory GetRouterInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oppositeInterfaceId: (() { final guardedValue = map['oppositeInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oppositeInterfaceOwnerId: (() { final guardedValue = map['oppositeInterfaceOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerType: (() { final guardedValue = map['routerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

