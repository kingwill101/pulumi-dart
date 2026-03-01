// ignore_for_file: unused_element, unnecessary_cast


class GetRouterInterfacesInterface {
  /// ID of the access point used by the VBR.
  final String accessPointId;
  /// Router interface creation time.
  final String creationTime;
  /// Router interface description.
  final String description;
  /// Source IP address used to perform health check on the physical connection.
  final String healthCheckSourceIp;
  /// Destination IP address used to perform health check on the physical connection.
  final String healthCheckTargetIp;
  /// Router interface ID.
  final String id;
  /// Router interface name.
  final String name;
  /// ID of the peer router interface.
  final String oppositeInterfaceId;
  /// Account ID of the owner of the peer router interface.
  final String oppositeInterfaceOwnerId;
  /// Peer router region ID.
  final String oppositeRegionId;
  /// Peer router ID.
  final String oppositeRouterId;
  /// Router type in the peer region. Possible values: `VRouter` and `VBR`.
  final String oppositeRouterType;
  /// Role of the router interface. Valid values are `InitiatingSide` (connection initiator) and
  /// `AcceptingSide` (connection receiver). The value of this parameter must be `InitiatingSide` if the `router_type` is set to `VBR`.
  final String role;
  /// ID of the VRouter located in the local region.
  final String routerId;
  /// Router type in the local region. Valid values are `VRouter` and `VBR` (physical connection).
  final String routerType;
  /// Specification of the link, such as `Small.1` (10Mb), `Middle.1` (100Mb), `Large.2` (2Gb), ...etc.
  final String specification;
  /// Expected status. Valid values are `Active`, `Inactive` and `Idle`.
  final String status;
  /// ID of the VPC that owns the router in the local region.
  final String vpcId;

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
      accessPointId: map['accessPointId'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      healthCheckSourceIp: map['healthCheckSourceIp'] as String,
      healthCheckTargetIp: map['healthCheckTargetIp'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      oppositeInterfaceId: map['oppositeInterfaceId'] as String,
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] as String,
      oppositeRegionId: map['oppositeRegionId'] as String,
      oppositeRouterId: map['oppositeRouterId'] as String,
      oppositeRouterType: map['oppositeRouterType'] as String,
      role: map['role'] as String,
      routerId: map['routerId'] as String,
      routerType: map['routerType'] as String,
      specification: map['specification'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

