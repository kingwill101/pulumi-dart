// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_vpc_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
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
  /// The Region of peer side.
  final pulumi.Input<String> oppositeRegion;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The role the router interface plays. Optional value: `InitiatingSide`, `AcceptingSide`.
  final pulumi.Input<String> role;
  /// The Router ID.
  final pulumi.Input<String> routerId;
  /// Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter.
  final pulumi.Input<String> routerType;
  /// Specification of router interfaces. It is valid when `role` is `InitiatingSide`. Accepting side's role is default to set as 'Negative'. For more about the specification, refer to [Router interface specification](https://www.alibabacloud.com/help/doc-detail/36037.htm).
  final pulumi.Input<String>? specification;

  /// Creates a new [RouterInterfaceArgs].
  /// [description] Description of the router interface. It can be 2-256 characters long or left blank. It cannot start with http:// and https://.
  /// [healthCheckSourceIp] Used as the Packet Source IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_target_ip` must be specified at the same time.
  /// [healthCheckTargetIp] Used as the Packet Target IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_source_ip` must be specified at the same time.
  /// [instanceChargeType] The billing method of the router interface. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid". Router Interface doesn't support "PrePaid" when region and opposite_region are the same.
  /// [name] Name of the router interface. Length must be 2-80 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  /// [oppositeAccessPointId] It has been deprecated from version 1.11.0.
  /// [oppositeRegion] The Region of peer side.
  /// [period] The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// [role] The role the router interface plays. Optional value: `InitiatingSide`, `AcceptingSide`.
  /// [routerId] The Router ID.
  /// [routerType] Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter.
  /// [specification] Specification of router interfaces. It is valid when `role` is `InitiatingSide`. Accepting side's role is default to set as 'Negative'. For more about the specification, refer to [Router interface specification](https://www.alibabacloud.com/help/doc-detail/36037.htm).
  RouterInterfaceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? healthCheckSourceIp,
    pulumi.Output<String>? healthCheckTargetIp,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oppositeAccessPointId,
    required pulumi.Output<String> oppositeRegion,
    pulumi.Output<int>? period,
    required pulumi.Output<String> role,
    required pulumi.Output<String> routerId,
    required pulumi.Output<String> routerType,
    pulumi.Output<String>? specification,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      healthCheckSourceIp = pulumi.Input.asOptionalInput<String>(healthCheckSourceIp),
      healthCheckTargetIp = pulumi.Input.asOptionalInput<String>(healthCheckTargetIp),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      name = pulumi.Input.asOptionalInput<String>(name),
      oppositeAccessPointId = pulumi.Input.asOptionalInput<String>(oppositeAccessPointId),
      oppositeRegion = pulumi.Input.asInput<String>(oppositeRegion),
      period = pulumi.Input.asOptionalInput<int>(period),
      role = pulumi.Input.asInput<String>(role),
      routerId = pulumi.Input.asInput<String>(routerId),
      routerType = pulumi.Input.asInput<String>(routerType),
      specification = pulumi.Input.asOptionalInput<String>(specification);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'healthCheckSourceIp': ?healthCheckSourceIp,
      'healthCheckTargetIp': ?healthCheckTargetIp,
      'instanceChargeType': ?instanceChargeType,
      'name': ?name,
      'oppositeAccessPointId': ?oppositeAccessPointId,
      'oppositeRegion': oppositeRegion,
      'period': ?period,
      'role': role,
      'routerId': routerId,
      'routerType': routerType,
      'specification': ?specification,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckSourceIp'] as String),
      healthCheckTargetIp: map['healthCheckTargetIp'] == null ? null : pulumi.Output.create<String>(map['healthCheckTargetIp'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oppositeAccessPointId: map['oppositeAccessPointId'] == null ? null : pulumi.Output.create<String>(map['oppositeAccessPointId'] as String),
      oppositeRegion: pulumi.Output.create<String>(map['oppositeRegion'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      role: pulumi.Output.create<String>(map['role'] as String),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
      routerType: pulumi.Output.create<String>(map['routerType'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<String>(map['specification'] as String),
    );
  }
}

