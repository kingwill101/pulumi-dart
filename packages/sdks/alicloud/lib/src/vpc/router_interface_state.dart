// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterInterface resources.
class RouterInterfaceState {
  /// It has been deprecated from version 1.11.0.
  final pulumi.Input<String>? accessPointId;
  /// Description of the router interface. It can be 2-256 characters long or left blank. It cannot start with http:// and https://.
  final pulumi.Input<String>? description;
  /// Used as the Packet Source IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_target_ip` must be specified at the same time.
  final pulumi.Input<String>? healthCheckSourceIp;
  /// Used as the Packet Target IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_source_ip` must be specified at the same time.
  final pulumi.Input<String>? healthCheckTargetIp;
  /// The billing method of the router interface. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid". Router Interface doesn't support "PrePaid" when region and opposite_region are the same.
  final pulumi.Input<String>? instanceChargeType;
  /// Name of the router interface. Length must be 2-80 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  /// If it is not specified, the default value is interface ID. The name cannot start with http:// and https://.
  final pulumi.Input<String>? name;
  /// It has been deprecated from version 1.11.0.
  final pulumi.Input<String>? oppositeAccessPointId;
  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  final pulumi.Input<String>? oppositeInterfaceId;
  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_interface_id' instead.
  final pulumi.Input<String>? oppositeInterfaceOwnerId;
  /// The Region of peer side.
  final pulumi.Input<String>? oppositeRegion;
  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  final pulumi.Input<String>? oppositeRouterId;
  /// It has been deprecated from version 1.11.0. resource alicloud_router_interface_connection's 'opposite_router_type' instead.
  final pulumi.Input<String>? oppositeRouterType;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The role the router interface plays. Optional value: `InitiatingSide`, `AcceptingSide`.
  final pulumi.Input<String>? role;
  /// The Router ID.
  final pulumi.Input<String>? routerId;
  /// Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter.
  final pulumi.Input<String>? routerType;
  /// Specification of router interfaces. It is valid when `role` is `InitiatingSide`. Accepting side's role is default to set as 'Negative'. For more about the specification, refer to [Router interface specification](https://www.alibabacloud.com/help/doc-detail/36037.htm).
  final pulumi.Input<String>? specification;

  /// Creates a new [RouterInterfaceState].
  /// [accessPointId] It has been deprecated from version 1.11.0.
  /// [description] Description of the router interface. It can be 2-256 characters long or left blank. It cannot start with http:// and https://.
  /// [healthCheckSourceIp] Used as the Packet Source IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_target_ip` must be specified at the same time.
  /// [healthCheckTargetIp] Used as the Packet Target IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_source_ip` must be specified at the same time.
  /// [instanceChargeType] The billing method of the router interface. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid". Router Interface doesn't support "PrePaid" when region and opposite_region are the same.
  /// [name] Name of the router interface. Length must be 2-80 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  /// [oppositeAccessPointId] It has been deprecated from version 1.11.0.
  /// [oppositeInterfaceId] It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  /// [oppositeInterfaceOwnerId] It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_interface_id' instead.
  /// [oppositeRegion] The Region of peer side.
  /// [oppositeRouterId] It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  /// [oppositeRouterType] It has been deprecated from version 1.11.0. resource alicloud_router_interface_connection's 'opposite_router_type' instead.
  /// [period] The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// [role] The role the router interface plays. Optional value: `InitiatingSide`, `AcceptingSide`.
  /// [routerId] The Router ID.
  /// [routerType] Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter.
  /// [specification] Specification of router interfaces. It is valid when `role` is `InitiatingSide`. Accepting side's role is default to set as 'Negative'. For more about the specification, refer to [Router interface specification](https://www.alibabacloud.com/help/doc-detail/36037.htm).
  RouterInterfaceState({
    this.accessPointId,
    this.description,
    this.healthCheckSourceIp,
    this.healthCheckTargetIp,
    this.instanceChargeType,
    this.name,
    this.oppositeAccessPointId,
    this.oppositeInterfaceId,
    this.oppositeInterfaceOwnerId,
    this.oppositeRegion,
    this.oppositeRouterId,
    this.oppositeRouterType,
    this.period,
    this.role,
    this.routerId,
    this.routerType,
    this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'description': ?description,
      'healthCheckSourceIp': ?healthCheckSourceIp,
      'healthCheckTargetIp': ?healthCheckTargetIp,
      'instanceChargeType': ?instanceChargeType,
      'name': ?name,
      'oppositeAccessPointId': ?oppositeAccessPointId,
      'oppositeInterfaceId': ?oppositeInterfaceId,
      'oppositeInterfaceOwnerId': ?oppositeInterfaceOwnerId,
      'oppositeRegion': ?oppositeRegion,
      'oppositeRouterId': ?oppositeRouterId,
      'oppositeRouterType': ?oppositeRouterType,
      'period': ?period,
      'role': ?role,
      'routerId': ?routerId,
      'routerType': ?routerType,
      'specification': ?specification,
    };
  }

  factory RouterInterfaceState.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceState(
      accessPointId: map['accessPointId'] == null ? null : (map['accessPointId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : (map['healthCheckSourceIp']! as String).input(),
      healthCheckTargetIp: map['healthCheckTargetIp'] == null ? null : (map['healthCheckTargetIp']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      oppositeAccessPointId: map['oppositeAccessPointId'] == null ? null : (map['oppositeAccessPointId']! as String).input(),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : (map['oppositeInterfaceId']! as String).input(),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : (map['oppositeInterfaceOwnerId']! as String).input(),
      oppositeRegion: map['oppositeRegion'] == null ? null : (map['oppositeRegion']! as String).input(),
      oppositeRouterId: map['oppositeRouterId'] == null ? null : (map['oppositeRouterId']! as String).input(),
      oppositeRouterType: map['oppositeRouterType'] == null ? null : (map['oppositeRouterType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      routerId: map['routerId'] == null ? null : (map['routerId']! as String).input(),
      routerType: map['routerType'] == null ? null : (map['routerType']! as String).input(),
      specification: map['specification'] == null ? null : (map['specification']! as String).input(),
    );
  }
}

