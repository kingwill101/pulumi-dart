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
  GetRouterInterfacesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? oppositeInterfaceId,
    pulumi.Output<String>? oppositeInterfaceOwnerId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? role,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? routerType,
    pulumi.Output<String>? specification,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      oppositeInterfaceId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceId),
      oppositeInterfaceOwnerId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceOwnerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      role = pulumi.Input.asOptionalInput<String>(role),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      routerType = pulumi.Input.asOptionalInput<String>(routerType),
      specification = pulumi.Input.asOptionalInput<String>(specification),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceId'] as String),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceOwnerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      routerType: map['routerType'] == null ? null : pulumi.Output.create<String>(map['routerType'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<String>(map['specification'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

