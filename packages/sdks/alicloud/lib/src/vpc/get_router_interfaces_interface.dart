// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterInterfacesInterface {
  /// ID of the access point used by the VBR.
  final pulumi.Input<String> accessPointId;
  /// Router interface creation time.
  final pulumi.Input<String> creationTime;
  /// Router interface description.
  final pulumi.Input<String> description;
  /// Source IP address used to perform health check on the physical connection.
  final pulumi.Input<String> healthCheckSourceIp;
  /// Destination IP address used to perform health check on the physical connection.
  final pulumi.Input<String> healthCheckTargetIp;
  /// Router interface ID.
  final pulumi.Input<String> id;
  /// Router interface name.
  final pulumi.Input<String> name;
  /// ID of the peer router interface.
  final pulumi.Input<String> oppositeInterfaceId;
  /// Account ID of the owner of the peer router interface.
  final pulumi.Input<String> oppositeInterfaceOwnerId;
  /// Peer router region ID.
  final pulumi.Input<String> oppositeRegionId;
  /// Peer router ID.
  final pulumi.Input<String> oppositeRouterId;
  /// Router type in the peer region. Possible values: `VRouter` and `VBR`.
  final pulumi.Input<String> oppositeRouterType;
  /// Role of the router interface. Valid values are `InitiatingSide` (connection initiator) and
  /// `AcceptingSide` (connection receiver). The value of this parameter must be `InitiatingSide` if the `router_type` is set to `VBR`.
  final pulumi.Input<String> role;
  /// ID of the VRouter located in the local region.
  final pulumi.Input<String> routerId;
  /// Router type in the local region. Valid values are `VRouter` and `VBR` (physical connection).
  final pulumi.Input<String> routerType;
  /// Specification of the link, such as `Small.1` (10Mb), `Middle.1` (100Mb), `Large.2` (2Gb), ...etc.
  final pulumi.Input<String> specification;
  /// Expected status. Valid values are `Active`, `Inactive` and `Idle`.
  final pulumi.Input<String> status;
  /// ID of the VPC that owns the router in the local region.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetRouterInterfacesInterface].
  /// [accessPointId] ID of the access point used by the VBR.
  /// [creationTime] Router interface creation time.
  /// [description] Router interface description.
  /// [healthCheckSourceIp] Source IP address used to perform health check on the physical connection.
  /// [healthCheckTargetIp] Destination IP address used to perform health check on the physical connection.
  /// [id] Router interface ID.
  /// [name] Router interface name.
  /// [oppositeInterfaceId] ID of the peer router interface.
  /// [oppositeInterfaceOwnerId] Account ID of the owner of the peer router interface.
  /// [oppositeRegionId] Peer router region ID.
  /// [oppositeRouterId] Peer router ID.
  /// [oppositeRouterType] Router type in the peer region. Possible values: `VRouter` and `VBR`.
  /// [role] Role of the router interface. Valid values are `InitiatingSide` (connection initiator) and
  /// [routerId] ID of the VRouter located in the local region.
  /// [routerType] Router type in the local region. Valid values are `VRouter` and `VBR` (physical connection).
  /// [specification] Specification of the link, such as `Small.1` (10Mb), `Middle.1` (100Mb), `Large.2` (2Gb), ...etc.
  /// [status] Expected status. Valid values are `Active`, `Inactive` and `Idle`.
  /// [vpcId] ID of the VPC that owns the router in the local region.
  GetRouterInterfacesInterface({
    required this.accessPointId,
    required this.creationTime,
    required this.description,
    required this.healthCheckSourceIp,
    required this.healthCheckTargetIp,
    required this.id,
    required this.name,
    required this.oppositeInterfaceId,
    required this.oppositeInterfaceOwnerId,
    required this.oppositeRegionId,
    required this.oppositeRouterId,
    required this.oppositeRouterType,
    required this.role,
    required this.routerId,
    required this.routerType,
    required this.specification,
    required this.status,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'creationTime': creationTime,
      'description': description,
      'healthCheckSourceIp': healthCheckSourceIp,
      'healthCheckTargetIp': healthCheckTargetIp,
      'id': id,
      'name': name,
      'oppositeInterfaceId': oppositeInterfaceId,
      'oppositeInterfaceOwnerId': oppositeInterfaceOwnerId,
      'oppositeRegionId': oppositeRegionId,
      'oppositeRouterId': oppositeRouterId,
      'oppositeRouterType': oppositeRouterType,
      'role': role,
      'routerId': routerId,
      'routerType': routerType,
      'specification': specification,
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetRouterInterfacesInterface.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesInterface(
      accessPointId: (map['accessPointId'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      healthCheckSourceIp: (map['healthCheckSourceIp'] as String).input(),
      healthCheckTargetIp: (map['healthCheckTargetIp'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      oppositeInterfaceId: (map['oppositeInterfaceId'] as String).input(),
      oppositeInterfaceOwnerId: (map['oppositeInterfaceOwnerId'] as String).input(),
      oppositeRegionId: (map['oppositeRegionId'] as String).input(),
      oppositeRouterId: (map['oppositeRouterId'] as String).input(),
      oppositeRouterType: (map['oppositeRouterType'] as String).input(),
      role: (map['role'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      routerType: (map['routerType'] as String).input(),
      specification: (map['specification'] as String).input(),
      status: (map['status'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

