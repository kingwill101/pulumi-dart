// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterInterface resources.
class RouterInterfaceState {
  /// Access point ID
  final pulumi.Input<String>? accessPointId;
  /// . Field 'name' has been deprecated from provider version 1.263.0.
  final pulumi.Input<bool>? autoPay;
  /// Whether to enable automatic renewal. Value:
  final pulumi.Input<bool>? autoRenew;
  /// The bandwidth of the router interface
  final pulumi.Input<int>? bandwidth;
  /// The service status of the router interface.
  final pulumi.Input<String>? businessStatus;
  /// Time the connection was established
  final pulumi.Input<String>? connectedTime;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// CrossBorder
  final pulumi.Input<bool>? crossBorder;
  /// Whether to delete the health check IP address configured on the router interface. Value:
  final pulumi.Input<bool>? deleteHealthCheckIp;
  /// The router interface description. It must be 2 to 256 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// End Time of Prepaid
  final pulumi.Input<String>? endTime;
  /// Whether the VBR router interface is created by using the fast connection mode. The fast connection mode can automatically complete the connection after the VBR and the router interfaces at both ends of the VPC are created. Value:
  final pulumi.Input<bool>? fastLinkMode;
  /// Whether there is renewal data
  final pulumi.Input<String>? hasReservationData;
  /// Health check rate. Unit: milliseconds. The recommend value is 2000. Indicates the time interval for sending continuous detection packets during a specified health check.
  final pulumi.Input<int>? hcRate;
  /// Health check threshold. Unit: One. The recommend value is 8. Indicates the number of detection packets sent during the specified health check.
  final pulumi.Input<String>? hcThreshold;
  /// Health check source IP address
  final pulumi.Input<String>? healthCheckSourceIp;
  /// Health check destination IP address
  final pulumi.Input<String>? healthCheckTargetIp;
  /// Peer access point ID
  final pulumi.Input<String>? oppositeAccessPointId;
  /// opposite bandwidth
  final pulumi.Input<int>? oppositeBandwidth;
  /// The service status of the router interface on the opposite end of the connection.
  final pulumi.Input<String>? oppositeInterfaceBusinessStatus;
  /// . Field 'router_table_id' has been deprecated from provider version 1.263.0.
  final pulumi.Input<String>? oppositeInterfaceId;
  /// Account ID of the peer router interface
  final pulumi.Input<String>? oppositeInterfaceOwnerId;
  /// Specifications of the interface of the peer router.
  final pulumi.Input<String>? oppositeInterfaceSpec;
  /// The status of the router interface on the peer of the connection.
  final pulumi.Input<String>? oppositeInterfaceStatus;
  /// Region of the connection peer
  final pulumi.Input<String>? oppositeRegionId;
  /// The ID of the router to which the opposite router interface belongs.
  final pulumi.Input<String>? oppositeRouterId;
  /// The router type associated with the peer router interface. Valid values:
  /// - VRouter: VPC router.
  /// - VBR: Virtual Border Router.
  final pulumi.Input<String>? oppositeRouterType;
  /// The peer VPC ID
  final pulumi.Input<String>? oppositeVpcInstanceId;
  /// The payment method of the router interface. Valid values:
  /// - Subscription : PrePaid.
  /// - PayAsYouGo : PostPaid.
  final pulumi.Input<String>? paymentType;
  /// Purchase duration, value:
  /// - When you choose to pay on a monthly basis, the value range is **1 to 9**.
  /// - When you choose to pay per year, the value range is **1 to 3**.
  ///
  /// > **NOTE:**  `period` is required when the value of the parameter `payment_type` is `Subscription`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;
  /// The billing cycle of the prepaid fee. Valid values:
  /// - `Month` (default): monthly payment.
  /// - `Year`: Pay per Year.
  ///
  ///
  /// > **NOTE:**  `period` is required when the value of the parameter `payment_type` is `Subscription`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pricingCycle;
  /// ReservationActiveTime
  final pulumi.Input<String>? reservationActiveTime;
  /// Renew Bandwidth
  final pulumi.Input<String>? reservationBandwidth;
  /// Payment Type for Renewal
  final pulumi.Input<String>? reservationInternetChargeType;
  /// Renewal Order Type
  final pulumi.Input<String>? reservationOrderType;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The role of the router interface. Valid values:
  /// - InitiatingSide : the initiator of the connection.
  /// - AcceptingSide : Connect to the receiving end.
  final pulumi.Input<String>? role;
  /// The ID of the router where the route entry is located.
  final pulumi.Input<String>? routerId;
  /// The first ID of the resource
  final pulumi.Input<String>? routerInterfaceId;
  /// Resource attribute field representing the resource name. It must be 2 to 128 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  final pulumi.Input<String>? routerInterfaceName;
  /// The type of the router where the routing table resides. Valid values:
  /// - VRouter:VPC router
  /// - VBR: Border Router
  final pulumi.Input<String>? routerType;
  /// The specification of the router interface. The available specifications and corresponding bandwidth values are as follows:
  /// - Mini.2: 2 Mbps
  /// - Mini.5: 5 Mbps
  /// - Small.1: 10 Mbps
  /// - Small.2: 20 Mbps
  /// - Small.5: 50 Mbps
  /// - Middle.1: 100 Mbps
  /// - Middle.2: 200 Mbps
  /// - Middle.5: 500 Mbps
  /// - Large.1: 1000 Mbps
  /// - Large.2: 2000 Mbps
  /// - Large.5: 5000 Mbps
  /// - Xlarge.1: 10000 Mbps
  ///
  /// When the Role is AcceptingSide (connecting to the receiving end), the Spec value is Negative, which means that the specification is not involved in creating the receiving end router interface.
  final pulumi.Input<String>? spec;
  /// Resource attribute fields that represent the status of the resource. Value range:
  /// - Idle : Initialize.
  /// - Connecting : the initiator is in the process of Connecting.
  /// - AcceptingConnecting : the receiving end is being connected.
  /// - Activating : Restoring.
  /// - Active : Normal.
  /// - Modifying : Modifying.
  /// - Deactivating : Freezing.
  /// - Inactive : Frozen.
  /// - Deleting : Deleting.
  /// - Deleted : Deleted.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the local VPC in the peering connection
  final pulumi.Input<String>? vpcInstanceId;

  /// Creates a new [RouterInterfaceState].
  /// [accessPointId] Access point ID
  /// [autoPay] . Field 'name' has been deprecated from provider version 1.263.0.
  /// [autoRenew] Whether to enable automatic renewal. Value:
  /// [bandwidth] The bandwidth of the router interface
  /// [businessStatus] The service status of the router interface.
  /// [connectedTime] Time the connection was established
  /// [createTime] The creation time of the resource
  /// [crossBorder] CrossBorder
  /// [deleteHealthCheckIp] Whether to delete the health check IP address configured on the router interface. Value:
  /// [description] The router interface description. It must be 2 to 256 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  /// [endTime] End Time of Prepaid
  /// [fastLinkMode] Whether the VBR router interface is created by using the fast connection mode. The fast connection mode can automatically complete the connection after the VBR and the router interfaces at both ends of the VPC are created. Value:
  /// [hasReservationData] Whether there is renewal data
  /// [hcRate] Health check rate. Unit: milliseconds. The recommend value is 2000. Indicates the time interval for sending continuous detection packets during a specified health check.
  /// [hcThreshold] Health check threshold. Unit: One. The recommend value is 8. Indicates the number of detection packets sent during the specified health check.
  /// [healthCheckSourceIp] Health check source IP address
  /// [healthCheckTargetIp] Health check destination IP address
  /// [oppositeAccessPointId] Peer access point ID
  /// [oppositeBandwidth] opposite bandwidth
  /// [oppositeInterfaceBusinessStatus] The service status of the router interface on the opposite end of the connection.
  /// [oppositeInterfaceId] . Field 'router_table_id' has been deprecated from provider version 1.263.0.
  /// [oppositeInterfaceOwnerId] Account ID of the peer router interface
  /// [oppositeInterfaceSpec] Specifications of the interface of the peer router.
  /// [oppositeInterfaceStatus] The status of the router interface on the peer of the connection.
  /// [oppositeRegionId] Region of the connection peer
  /// [oppositeRouterId] The ID of the router to which the opposite router interface belongs.
  /// [oppositeRouterType] The router type associated with the peer router interface. Valid values:
  /// [oppositeVpcInstanceId] The peer VPC ID
  /// [paymentType] The payment method of the router interface. Valid values:
  /// [period] Purchase duration, value:
  /// [pricingCycle] The billing cycle of the prepaid fee. Valid values:
  /// [reservationActiveTime] ReservationActiveTime
  /// [reservationBandwidth] Renew Bandwidth
  /// [reservationInternetChargeType] Payment Type for Renewal
  /// [reservationOrderType] Renewal Order Type
  /// [resourceGroupId] The ID of the resource group
  /// [role] The role of the router interface. Valid values:
  /// [routerId] The ID of the router where the route entry is located.
  /// [routerInterfaceId] The first ID of the resource
  /// [routerInterfaceName] Resource attribute field representing the resource name. It must be 2 to 128 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  /// [routerType] The type of the router where the routing table resides. Valid values:
  /// [spec] The specification of the router interface. The available specifications and corresponding bandwidth values are as follows:
  /// [status] Resource attribute fields that represent the status of the resource. Value range:
  /// [tags] The tag of the resource
  /// [vpcInstanceId] ID of the local VPC in the peering connection
  RouterInterfaceState({
    this.accessPointId,
    this.autoPay,
    this.autoRenew,
    this.bandwidth,
    this.businessStatus,
    this.connectedTime,
    this.createTime,
    this.crossBorder,
    this.deleteHealthCheckIp,
    this.description,
    this.endTime,
    this.fastLinkMode,
    this.hasReservationData,
    this.hcRate,
    this.hcThreshold,
    this.healthCheckSourceIp,
    this.healthCheckTargetIp,
    this.oppositeAccessPointId,
    this.oppositeBandwidth,
    this.oppositeInterfaceBusinessStatus,
    this.oppositeInterfaceId,
    this.oppositeInterfaceOwnerId,
    this.oppositeInterfaceSpec,
    this.oppositeInterfaceStatus,
    this.oppositeRegionId,
    this.oppositeRouterId,
    this.oppositeRouterType,
    this.oppositeVpcInstanceId,
    this.paymentType,
    this.period,
    this.pricingCycle,
    this.reservationActiveTime,
    this.reservationBandwidth,
    this.reservationInternetChargeType,
    this.reservationOrderType,
    this.resourceGroupId,
    this.role,
    this.routerId,
    this.routerInterfaceId,
    this.routerInterfaceName,
    this.routerType,
    this.spec,
    this.status,
    this.tags,
    this.vpcInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'bandwidth': ?bandwidth,
      'businessStatus': ?businessStatus,
      'connectedTime': ?connectedTime,
      'createTime': ?createTime,
      'crossBorder': ?crossBorder,
      'deleteHealthCheckIp': ?deleteHealthCheckIp,
      'description': ?description,
      'endTime': ?endTime,
      'fastLinkMode': ?fastLinkMode,
      'hasReservationData': ?hasReservationData,
      'hcRate': ?hcRate,
      'hcThreshold': ?hcThreshold,
      'healthCheckSourceIp': ?healthCheckSourceIp,
      'healthCheckTargetIp': ?healthCheckTargetIp,
      'oppositeAccessPointId': ?oppositeAccessPointId,
      'oppositeBandwidth': ?oppositeBandwidth,
      'oppositeInterfaceBusinessStatus': ?oppositeInterfaceBusinessStatus,
      'oppositeInterfaceId': ?oppositeInterfaceId,
      'oppositeInterfaceOwnerId': ?oppositeInterfaceOwnerId,
      'oppositeInterfaceSpec': ?oppositeInterfaceSpec,
      'oppositeInterfaceStatus': ?oppositeInterfaceStatus,
      'oppositeRegionId': ?oppositeRegionId,
      'oppositeRouterId': ?oppositeRouterId,
      'oppositeRouterType': ?oppositeRouterType,
      'oppositeVpcInstanceId': ?oppositeVpcInstanceId,
      'paymentType': ?paymentType,
      'period': ?period,
      'pricingCycle': ?pricingCycle,
      'reservationActiveTime': ?reservationActiveTime,
      'reservationBandwidth': ?reservationBandwidth,
      'reservationInternetChargeType': ?reservationInternetChargeType,
      'reservationOrderType': ?reservationOrderType,
      'resourceGroupId': ?resourceGroupId,
      'role': ?role,
      'routerId': ?routerId,
      'routerInterfaceId': ?routerInterfaceId,
      'routerInterfaceName': ?routerInterfaceName,
      'routerType': ?routerType,
      'spec': ?spec,
      'status': ?status,
      'tags': ?tags,
      'vpcInstanceId': ?vpcInstanceId,
    };
  }

  factory RouterInterfaceState.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceState(
      accessPointId: map['accessPointId'] == null ? null : (map['accessPointId'] as String).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      businessStatus: map['businessStatus'] == null ? null : (map['businessStatus'] as String).input(),
      connectedTime: map['connectedTime'] == null ? null : (map['connectedTime'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      crossBorder: map['crossBorder'] == null ? null : (map['crossBorder'] as bool).input(),
      deleteHealthCheckIp: map['deleteHealthCheckIp'] == null ? null : (map['deleteHealthCheckIp'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      fastLinkMode: map['fastLinkMode'] == null ? null : (map['fastLinkMode'] as bool).input(),
      hasReservationData: map['hasReservationData'] == null ? null : (map['hasReservationData'] as String).input(),
      hcRate: map['hcRate'] == null ? null : (map['hcRate'] as int).input(),
      hcThreshold: map['hcThreshold'] == null ? null : (map['hcThreshold'] as String).input(),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : (map['healthCheckSourceIp'] as String).input(),
      healthCheckTargetIp: map['healthCheckTargetIp'] == null ? null : (map['healthCheckTargetIp'] as String).input(),
      oppositeAccessPointId: map['oppositeAccessPointId'] == null ? null : (map['oppositeAccessPointId'] as String).input(),
      oppositeBandwidth: map['oppositeBandwidth'] == null ? null : (map['oppositeBandwidth'] as int).input(),
      oppositeInterfaceBusinessStatus: map['oppositeInterfaceBusinessStatus'] == null ? null : (map['oppositeInterfaceBusinessStatus'] as String).input(),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : (map['oppositeInterfaceId'] as String).input(),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : (map['oppositeInterfaceOwnerId'] as String).input(),
      oppositeInterfaceSpec: map['oppositeInterfaceSpec'] == null ? null : (map['oppositeInterfaceSpec'] as String).input(),
      oppositeInterfaceStatus: map['oppositeInterfaceStatus'] == null ? null : (map['oppositeInterfaceStatus'] as String).input(),
      oppositeRegionId: map['oppositeRegionId'] == null ? null : (map['oppositeRegionId'] as String).input(),
      oppositeRouterId: map['oppositeRouterId'] == null ? null : (map['oppositeRouterId'] as String).input(),
      oppositeRouterType: map['oppositeRouterType'] == null ? null : (map['oppositeRouterType'] as String).input(),
      oppositeVpcInstanceId: map['oppositeVpcInstanceId'] == null ? null : (map['oppositeVpcInstanceId'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      reservationActiveTime: map['reservationActiveTime'] == null ? null : (map['reservationActiveTime'] as String).input(),
      reservationBandwidth: map['reservationBandwidth'] == null ? null : (map['reservationBandwidth'] as String).input(),
      reservationInternetChargeType: map['reservationInternetChargeType'] == null ? null : (map['reservationInternetChargeType'] as String).input(),
      reservationOrderType: map['reservationOrderType'] == null ? null : (map['reservationOrderType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      routerId: map['routerId'] == null ? null : (map['routerId'] as String).input(),
      routerInterfaceId: map['routerInterfaceId'] == null ? null : (map['routerInterfaceId'] as String).input(),
      routerInterfaceName: map['routerInterfaceName'] == null ? null : (map['routerInterfaceName'] as String).input(),
      routerType: map['routerType'] == null ? null : (map['routerType'] as String).input(),
      spec: map['spec'] == null ? null : (map['spec'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcInstanceId: map['vpcInstanceId'] == null ? null : (map['vpcInstanceId'] as String).input(),
    );
  }
}

