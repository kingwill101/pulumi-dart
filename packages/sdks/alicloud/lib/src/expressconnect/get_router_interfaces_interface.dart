// ignore_for_file: unused_element, unnecessary_cast


class GetRouterInterfacesInterface {
  /// The access point ID to which the VBR belongs.
  final String accessPointId;
  /// The bandwidth of the resource.
  final int bandwidth;
  /// The businessStatus of the resource. Valid Values: `Normal`, `FinancialLocked`, `SecurityLocked`.
  final String businessStatus;
  /// The connected time of the resource.
  final String connectedTime;
  /// The creation time of the resource
  final String createTime;
  /// The cross border of the resource.
  final bool crossBorder;
  /// The description of the router interface.
  final String description;
  /// The end time of the resource.
  final String endTime;
  /// The has reservation data of the resource.
  final String hasReservationData;
  /// The hc rate of the resource.
  final int hcRate;
  /// The hc threshold of the resource.
  final String hcThreshold;
  /// The health check source IP address, must be an unused IP within the local VPC.
  final String healthCheckSourceIp;
  /// The IP address for health screening purposes.
  final String healthCheckTargetIp;
  final String id;
  /// The Access point ID to which the other end belongs.
  final String oppositeAccessPointId;
  /// The opposite bandwidth of the router on the other side.
  final int oppositeBandwidth;
  /// The opposite interface business status of the router on the other side. Valid Values: `Normal`, `FinancialLocked`, `SecurityLocked`.
  final String oppositeInterfaceBusinessStatus;
  /// The Interface ID of the router at the other end.
  final String oppositeInterfaceId;
  /// The AliCloud account ID of the owner of the router interface on the other end.
  final String oppositeInterfaceOwnerId;
  /// The opposite interface spec of the router on the other side. Valid Values: `Mini.2`, `Mini.5`, `Mini.5`, `Small.2`, `Small.5`, `Middle.1`, `Middle.2`, `Middle.5`, `Large.1`, `Large.2`, `Large.5`, `XLarge.1`, `Negative`.
  final String oppositeInterfaceSpec;
  /// The opposite interface status of the router on the other side. Valid Values: `Idle`, `AcceptingConnecting`, `Connecting`, `Activating`, `Active`, `Modifying`, `Deactivating`, `Inactive`, `Deleting`.
  final String oppositeInterfaceStatus;
  /// The geographical ID of the location of the receiving end of the connection.
  final String oppositeRegionId;
  /// The id of the router at the other end.
  final String oppositeRouterId;
  /// The opposite router type of the router on the other side. Valid Values: `VRouter`, `VBR`.
  final String oppositeRouterType;
  /// The opposite vpc instance id of the router on the other side.
  final String oppositeVpcInstanceId;
  /// The payment methods for router interfaces. Valid Values: `PrePaid`, `PostPaid`.
  final String paymentType;
  /// The reservation active time of the resource.
  final String reservationActiveTime;
  /// The reservation bandwidth of the resource.
  final String reservationBandwidth;
  /// The reservation internet charge type of the resource.
  final String reservationInternetChargeType;
  /// The reservation order type of the resource.
  final String reservationOrderType;
  /// The role of the router interface. Valid Values: `InitiatingSide`, `AcceptingSide`.
  final String role;
  /// The router id associated with the router interface.
  final String routerId;
  /// The first ID of the resource.
  final String routerInterfaceId;
  /// The name of the resource.
  final String routerInterfaceName;
  /// The type of router associated with the router interface. Valid Values: `VRouter`, `VBR`.
  final String routerType;
  /// The specification of the router interface. Valid Values: `Mini.2`, `Mini.5`, `Mini.5`, `Small.2`, `Small.5`, `Middle.1`, `Middle.2`, `Middle.5`, `Large.1`, `Large.2`, `Large.5`, `XLarge.1`, `Negative`.
  final String spec;
  /// The status of the resource. Valid Values: `Idle`, `AcceptingConnecting`, `Connecting`, `Activating`, `Active`, `Modifying`, `Deactivating`, `Inactive`, `Deleting`.
  final String status;
  /// The vpc instance id of the resource.
  final String vpcInstanceId;

  /// Creates a new [GetRouterInterfacesInterface].
  /// [accessPointId] The access point ID to which the VBR belongs.
  /// [bandwidth] The bandwidth of the resource.
  /// [businessStatus] The businessStatus of the resource. Valid Values: `Normal`, `FinancialLocked`, `SecurityLocked`.
  /// [connectedTime] The connected time of the resource.
  /// [createTime] The creation time of the resource
  /// [crossBorder] The cross border of the resource.
  /// [description] The description of the router interface.
  /// [endTime] The end time of the resource.
  /// [hasReservationData] The has reservation data of the resource.
  /// [hcRate] The hc rate of the resource.
  /// [hcThreshold] The hc threshold of the resource.
  /// [healthCheckSourceIp] The health check source IP address, must be an unused IP within the local VPC.
  /// [healthCheckTargetIp] The IP address for health screening purposes.
  /// [id] Required.
  /// [oppositeAccessPointId] The Access point ID to which the other end belongs.
  /// [oppositeBandwidth] The opposite bandwidth of the router on the other side.
  /// [oppositeInterfaceBusinessStatus] The opposite interface business status of the router on the other side. Valid Values: `Normal`, `FinancialLocked`, `SecurityLocked`.
  /// [oppositeInterfaceId] The Interface ID of the router at the other end.
  /// [oppositeInterfaceOwnerId] The AliCloud account ID of the owner of the router interface on the other end.
  /// [oppositeInterfaceSpec] The opposite interface spec of the router on the other side. Valid Values: `Mini.2`, `Mini.5`, `Mini.5`, `Small.2`, `Small.5`, `Middle.1`, `Middle.2`, `Middle.5`, `Large.1`, `Large.2`, `Large.5`, `XLarge.1`, `Negative`.
  /// [oppositeInterfaceStatus] The opposite interface status of the router on the other side. Valid Values: `Idle`, `AcceptingConnecting`, `Connecting`, `Activating`, `Active`, `Modifying`, `Deactivating`, `Inactive`, `Deleting`.
  /// [oppositeRegionId] The geographical ID of the location of the receiving end of the connection.
  /// [oppositeRouterId] The id of the router at the other end.
  /// [oppositeRouterType] The opposite router type of the router on the other side. Valid Values: `VRouter`, `VBR`.
  /// [oppositeVpcInstanceId] The opposite vpc instance id of the router on the other side.
  /// [paymentType] The payment methods for router interfaces. Valid Values: `PrePaid`, `PostPaid`.
  /// [reservationActiveTime] The reservation active time of the resource.
  /// [reservationBandwidth] The reservation bandwidth of the resource.
  /// [reservationInternetChargeType] The reservation internet charge type of the resource.
  /// [reservationOrderType] The reservation order type of the resource.
  /// [role] The role of the router interface. Valid Values: `InitiatingSide`, `AcceptingSide`.
  /// [routerId] The router id associated with the router interface.
  /// [routerInterfaceId] The first ID of the resource.
  /// [routerInterfaceName] The name of the resource.
  /// [routerType] The type of router associated with the router interface. Valid Values: `VRouter`, `VBR`.
  /// [spec] The specification of the router interface. Valid Values: `Mini.2`, `Mini.5`, `Mini.5`, `Small.2`, `Small.5`, `Middle.1`, `Middle.2`, `Middle.5`, `Large.1`, `Large.2`, `Large.5`, `XLarge.1`, `Negative`.
  /// [status] The status of the resource. Valid Values: `Idle`, `AcceptingConnecting`, `Connecting`, `Activating`, `Active`, `Modifying`, `Deactivating`, `Inactive`, `Deleting`.
  /// [vpcInstanceId] The vpc instance id of the resource.
  GetRouterInterfacesInterface({
    required this.accessPointId,
    required this.bandwidth,
    required this.businessStatus,
    required this.connectedTime,
    required this.createTime,
    required this.crossBorder,
    required this.description,
    required this.endTime,
    required this.hasReservationData,
    required this.hcRate,
    required this.hcThreshold,
    required this.healthCheckSourceIp,
    required this.healthCheckTargetIp,
    required this.id,
    required this.oppositeAccessPointId,
    required this.oppositeBandwidth,
    required this.oppositeInterfaceBusinessStatus,
    required this.oppositeInterfaceId,
    required this.oppositeInterfaceOwnerId,
    required this.oppositeInterfaceSpec,
    required this.oppositeInterfaceStatus,
    required this.oppositeRegionId,
    required this.oppositeRouterId,
    required this.oppositeRouterType,
    required this.oppositeVpcInstanceId,
    required this.paymentType,
    required this.reservationActiveTime,
    required this.reservationBandwidth,
    required this.reservationInternetChargeType,
    required this.reservationOrderType,
    required this.role,
    required this.routerId,
    required this.routerInterfaceId,
    required this.routerInterfaceName,
    required this.routerType,
    required this.spec,
    required this.status,
    required this.vpcInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'bandwidth': bandwidth,
      'businessStatus': businessStatus,
      'connectedTime': connectedTime,
      'createTime': createTime,
      'crossBorder': crossBorder,
      'description': description,
      'endTime': endTime,
      'hasReservationData': hasReservationData,
      'hcRate': hcRate,
      'hcThreshold': hcThreshold,
      'healthCheckSourceIp': healthCheckSourceIp,
      'healthCheckTargetIp': healthCheckTargetIp,
      'id': id,
      'oppositeAccessPointId': oppositeAccessPointId,
      'oppositeBandwidth': oppositeBandwidth,
      'oppositeInterfaceBusinessStatus': oppositeInterfaceBusinessStatus,
      'oppositeInterfaceId': oppositeInterfaceId,
      'oppositeInterfaceOwnerId': oppositeInterfaceOwnerId,
      'oppositeInterfaceSpec': oppositeInterfaceSpec,
      'oppositeInterfaceStatus': oppositeInterfaceStatus,
      'oppositeRegionId': oppositeRegionId,
      'oppositeRouterId': oppositeRouterId,
      'oppositeRouterType': oppositeRouterType,
      'oppositeVpcInstanceId': oppositeVpcInstanceId,
      'paymentType': paymentType,
      'reservationActiveTime': reservationActiveTime,
      'reservationBandwidth': reservationBandwidth,
      'reservationInternetChargeType': reservationInternetChargeType,
      'reservationOrderType': reservationOrderType,
      'role': role,
      'routerId': routerId,
      'routerInterfaceId': routerInterfaceId,
      'routerInterfaceName': routerInterfaceName,
      'routerType': routerType,
      'spec': spec,
      'status': status,
      'vpcInstanceId': vpcInstanceId,
    };
  }

  factory GetRouterInterfacesInterface.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesInterface(
      accessPointId: map['accessPointId'] as String,
      bandwidth: map['bandwidth'] as int,
      businessStatus: map['businessStatus'] as String,
      connectedTime: map['connectedTime'] as String,
      createTime: map['createTime'] as String,
      crossBorder: map['crossBorder'] as bool,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      hasReservationData: map['hasReservationData'] as String,
      hcRate: map['hcRate'] as int,
      hcThreshold: map['hcThreshold'] as String,
      healthCheckSourceIp: map['healthCheckSourceIp'] as String,
      healthCheckTargetIp: map['healthCheckTargetIp'] as String,
      id: map['id'] as String,
      oppositeAccessPointId: map['oppositeAccessPointId'] as String,
      oppositeBandwidth: map['oppositeBandwidth'] as int,
      oppositeInterfaceBusinessStatus: map['oppositeInterfaceBusinessStatus'] as String,
      oppositeInterfaceId: map['oppositeInterfaceId'] as String,
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] as String,
      oppositeInterfaceSpec: map['oppositeInterfaceSpec'] as String,
      oppositeInterfaceStatus: map['oppositeInterfaceStatus'] as String,
      oppositeRegionId: map['oppositeRegionId'] as String,
      oppositeRouterId: map['oppositeRouterId'] as String,
      oppositeRouterType: map['oppositeRouterType'] as String,
      oppositeVpcInstanceId: map['oppositeVpcInstanceId'] as String,
      paymentType: map['paymentType'] as String,
      reservationActiveTime: map['reservationActiveTime'] as String,
      reservationBandwidth: map['reservationBandwidth'] as String,
      reservationInternetChargeType: map['reservationInternetChargeType'] as String,
      reservationOrderType: map['reservationOrderType'] as String,
      role: map['role'] as String,
      routerId: map['routerId'] as String,
      routerInterfaceId: map['routerInterfaceId'] as String,
      routerInterfaceName: map['routerInterfaceName'] as String,
      routerType: map['routerType'] as String,
      spec: map['spec'] as String,
      status: map['status'] as String,
      vpcInstanceId: map['vpcInstanceId'] as String,
    );
  }
}

