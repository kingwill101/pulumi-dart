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
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
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
    this.description,
    this.healthCheckSourceIp,
    this.healthCheckTargetIp,
    this.instanceChargeType,
    this.name,
    this.oppositeAccessPointId,
    required this.oppositeRegion,
    this.period,
    required this.role,
    required this.routerId,
    required this.routerType,
    this.specification,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckSourceIp: (() {
        final guardedValue = map['healthCheckSourceIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckTargetIp: (() {
        final guardedValue = map['healthCheckTargetIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oppositeAccessPointId: (() {
        final guardedValue = map['oppositeAccessPointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oppositeRegion: pulumi.Input.fromValue(map['oppositeRegion'] as String),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      routerId: pulumi.Input.fromValue(map['routerId'] as String),
      routerType: pulumi.Input.fromValue(map['routerType'] as String),
      specification: (() {
        final guardedValue = map['specification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
