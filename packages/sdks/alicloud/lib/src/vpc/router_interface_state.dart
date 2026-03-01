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
    pulumi.Output<String>? accessPointId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? healthCheckSourceIp,
    pulumi.Output<String>? healthCheckTargetIp,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oppositeAccessPointId,
    pulumi.Output<String>? oppositeInterfaceId,
    pulumi.Output<String>? oppositeInterfaceOwnerId,
    pulumi.Output<String>? oppositeRegion,
    pulumi.Output<String>? oppositeRouterId,
    pulumi.Output<String>? oppositeRouterType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? role,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? routerType,
    pulumi.Output<String>? specification,
  }) :
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      description = pulumi.Input.asOptionalInput<String>(description),
      healthCheckSourceIp = pulumi.Input.asOptionalInput<String>(healthCheckSourceIp),
      healthCheckTargetIp = pulumi.Input.asOptionalInput<String>(healthCheckTargetIp),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      name = pulumi.Input.asOptionalInput<String>(name),
      oppositeAccessPointId = pulumi.Input.asOptionalInput<String>(oppositeAccessPointId),
      oppositeInterfaceId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceId),
      oppositeInterfaceOwnerId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceOwnerId),
      oppositeRegion = pulumi.Input.asOptionalInput<String>(oppositeRegion),
      oppositeRouterId = pulumi.Input.asOptionalInput<String>(oppositeRouterId),
      oppositeRouterType = pulumi.Input.asOptionalInput<String>(oppositeRouterType),
      period = pulumi.Input.asOptionalInput<int>(period),
      role = pulumi.Input.asOptionalInput<String>(role),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      routerType = pulumi.Input.asOptionalInput<String>(routerType),
      specification = pulumi.Input.asOptionalInput<String>(specification);

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
      accessPointId: map['accessPointId'] == null ? null : pulumi.Output.create<String>(map['accessPointId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckSourceIp'] as String),
      healthCheckTargetIp: map['healthCheckTargetIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckTargetIp'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oppositeAccessPointId: map['oppositeAccessPointId'] == null ? null : pulumi.Output.create<String>(map['oppositeAccessPointId'] as String),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceId'] as String),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceOwnerId'] as String),
      oppositeRegion: map['oppositeRegion'] == null ? null : pulumi.Output.create<String>(map['oppositeRegion'] as String),
      oppositeRouterId: map['oppositeRouterId'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterId'] as String),
      oppositeRouterType: map['oppositeRouterType'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      routerType: map['routerType'] == null ? null : pulumi.Output.create<String>(map['routerType'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<String>(map['specification'] as String),
    );
  }
}

