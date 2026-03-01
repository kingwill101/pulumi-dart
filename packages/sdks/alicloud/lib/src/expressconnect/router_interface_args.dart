// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
  /// Access point ID
  final pulumi.Input<String>? accessPointId;
  /// . Field 'name' has been deprecated from provider version 1.263.0.
  final pulumi.Input<bool>? autoPay;
  /// Whether to enable automatic renewal. Value:
  final pulumi.Input<bool>? autoRenew;
  /// Whether to delete the health check IP address configured on the router interface. Value:
  final pulumi.Input<bool>? deleteHealthCheckIp;
  /// The router interface description. It must be 2 to 256 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// Whether the VBR router interface is created by using the fast connection mode. The fast connection mode can automatically complete the connection after the VBR and the router interfaces at both ends of the VPC are created. Value:
  final pulumi.Input<bool>? fastLinkMode;
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
  /// . Field 'router_table_id' has been deprecated from provider version 1.263.0.
  final pulumi.Input<String>? oppositeInterfaceId;
  /// Account ID of the peer router interface
  final pulumi.Input<String>? oppositeInterfaceOwnerId;
  /// Region of the connection peer
  final pulumi.Input<String> oppositeRegionId;
  /// The ID of the router to which the opposite router interface belongs.
  final pulumi.Input<String>? oppositeRouterId;
  /// The router type associated with the peer router interface. Valid values:
  /// - VRouter: VPC router.
  /// - VBR: Virtual Border Router.
  final pulumi.Input<String>? oppositeRouterType;
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
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The role of the router interface. Valid values:
  /// - InitiatingSide : the initiator of the connection.
  /// - AcceptingSide : Connect to the receiving end.
  final pulumi.Input<String> role;
  /// The ID of the router where the route entry is located.
  final pulumi.Input<String> routerId;
  /// Resource attribute field representing the resource name. It must be 2 to 128 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  final pulumi.Input<String>? routerInterfaceName;
  /// The type of the router where the routing table resides. Valid values:
  /// - VRouter:VPC router
  /// - VBR: Border Router
  final pulumi.Input<String> routerType;
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
  final pulumi.Input<String> spec;
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

  /// Creates a new [RouterInterfaceArgs].
  /// [accessPointId] Access point ID
  /// [autoPay] . Field 'name' has been deprecated from provider version 1.263.0.
  /// [autoRenew] Whether to enable automatic renewal. Value:
  /// [deleteHealthCheckIp] Whether to delete the health check IP address configured on the router interface. Value:
  /// [description] The router interface description. It must be 2 to 256 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  /// [fastLinkMode] Whether the VBR router interface is created by using the fast connection mode. The fast connection mode can automatically complete the connection after the VBR and the router interfaces at both ends of the VPC are created. Value:
  /// [hcRate] Health check rate. Unit: milliseconds. The recommend value is 2000. Indicates the time interval for sending continuous detection packets during a specified health check.
  /// [hcThreshold] Health check threshold. Unit: One. The recommend value is 8. Indicates the number of detection packets sent during the specified health check.
  /// [healthCheckSourceIp] Health check source IP address
  /// [healthCheckTargetIp] Health check destination IP address
  /// [oppositeAccessPointId] Peer access point ID
  /// [oppositeInterfaceId] . Field 'router_table_id' has been deprecated from provider version 1.263.0.
  /// [oppositeInterfaceOwnerId] Account ID of the peer router interface
  /// [oppositeRegionId] Region of the connection peer
  /// [oppositeRouterId] The ID of the router to which the opposite router interface belongs.
  /// [oppositeRouterType] The router type associated with the peer router interface. Valid values:
  /// [paymentType] The payment method of the router interface. Valid values:
  /// [period] Purchase duration, value:
  /// [pricingCycle] The billing cycle of the prepaid fee. Valid values:
  /// [resourceGroupId] The ID of the resource group
  /// [role] The role of the router interface. Valid values:
  /// [routerId] The ID of the router where the route entry is located.
  /// [routerInterfaceName] Resource attribute field representing the resource name. It must be 2 to 128 characters in length and must start with a letter or a Chinese character, but cannot start with http:// or https.
  /// [routerType] The type of the router where the routing table resides. Valid values:
  /// [spec] The specification of the router interface. The available specifications and corresponding bandwidth values are as follows:
  /// [status] Resource attribute fields that represent the status of the resource. Value range:
  /// [tags] The tag of the resource
  RouterInterfaceArgs({
    pulumi.Output<String>? accessPointId,
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<bool>? deleteHealthCheckIp,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? fastLinkMode,
    pulumi.Output<int>? hcRate,
    pulumi.Output<String>? hcThreshold,
    pulumi.Output<String>? healthCheckSourceIp,
    pulumi.Output<String>? healthCheckTargetIp,
    pulumi.Output<String>? oppositeAccessPointId,
    pulumi.Output<String>? oppositeInterfaceId,
    pulumi.Output<String>? oppositeInterfaceOwnerId,
    required pulumi.Output<String> oppositeRegionId,
    pulumi.Output<String>? oppositeRouterId,
    pulumi.Output<String>? oppositeRouterType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> role,
    required pulumi.Output<String> routerId,
    pulumi.Output<String>? routerInterfaceName,
    required pulumi.Output<String> routerType,
    required pulumi.Output<String> spec,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      deleteHealthCheckIp = pulumi.Input.asOptionalInput<bool>(deleteHealthCheckIp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fastLinkMode = pulumi.Input.asOptionalInput<bool>(fastLinkMode),
      hcRate = pulumi.Input.asOptionalInput<int>(hcRate),
      hcThreshold = pulumi.Input.asOptionalInput<String>(hcThreshold),
      healthCheckSourceIp = pulumi.Input.asOptionalInput<String>(healthCheckSourceIp),
      healthCheckTargetIp = pulumi.Input.asOptionalInput<String>(healthCheckTargetIp),
      oppositeAccessPointId = pulumi.Input.asOptionalInput<String>(oppositeAccessPointId),
      oppositeInterfaceId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceId),
      oppositeInterfaceOwnerId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceOwnerId),
      oppositeRegionId = pulumi.Input.asInput<String>(oppositeRegionId),
      oppositeRouterId = pulumi.Input.asOptionalInput<String>(oppositeRouterId),
      oppositeRouterType = pulumi.Input.asOptionalInput<String>(oppositeRouterType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      role = pulumi.Input.asInput<String>(role),
      routerId = pulumi.Input.asInput<String>(routerId),
      routerInterfaceName = pulumi.Input.asOptionalInput<String>(routerInterfaceName),
      routerType = pulumi.Input.asInput<String>(routerType),
      spec = pulumi.Input.asInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'deleteHealthCheckIp': ?deleteHealthCheckIp,
      'description': ?description,
      'fastLinkMode': ?fastLinkMode,
      'hcRate': ?hcRate,
      'hcThreshold': ?hcThreshold,
      'healthCheckSourceIp': ?healthCheckSourceIp,
      'healthCheckTargetIp': ?healthCheckTargetIp,
      'oppositeAccessPointId': ?oppositeAccessPointId,
      'oppositeInterfaceId': ?oppositeInterfaceId,
      'oppositeInterfaceOwnerId': ?oppositeInterfaceOwnerId,
      'oppositeRegionId': oppositeRegionId,
      'oppositeRouterId': ?oppositeRouterId,
      'oppositeRouterType': ?oppositeRouterType,
      'paymentType': ?paymentType,
      'period': ?period,
      'pricingCycle': ?pricingCycle,
      'resourceGroupId': ?resourceGroupId,
      'role': role,
      'routerId': routerId,
      'routerInterfaceName': ?routerInterfaceName,
      'routerType': routerType,
      'spec': spec,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      accessPointId: map['accessPointId'] == null ? null : pulumi.Output.create<String>(map['accessPointId'] as String),
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      deleteHealthCheckIp: map['deleteHealthCheckIp'] == null ? null : pulumi.Output.create<bool>(map['deleteHealthCheckIp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fastLinkMode: map['fastLinkMode'] == null ? null : pulumi.Output.create<bool>(map['fastLinkMode'] as bool),
      hcRate: map['hcRate'] == null ? null : pulumi.Output.create<int>(map['hcRate'] as int),
      hcThreshold: map['hcThreshold'] == null ? null : pulumi.Output.create<String>(map['hcThreshold'] as String),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckSourceIp'] as String),
      healthCheckTargetIp: map['healthCheckTargetIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckTargetIp'] as String),
      oppositeAccessPointId: map['oppositeAccessPointId'] == null ? null : pulumi.Output.create<String>(map['oppositeAccessPointId'] as String),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceId'] as String),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceOwnerId'] as String),
      oppositeRegionId: pulumi.Output.create<String>(map['oppositeRegionId'] as String),
      oppositeRouterId: map['oppositeRouterId'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterId'] as String),
      oppositeRouterType: map['oppositeRouterType'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
      routerInterfaceName: map['routerInterfaceName'] == null ? null : pulumi.Output.create<String>(map['routerInterfaceName'] as String),
      routerType: pulumi.Output.create<String>(map['routerType'] as String),
      spec: pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

