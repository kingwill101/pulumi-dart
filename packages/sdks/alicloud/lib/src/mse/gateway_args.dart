// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_mse_gateway_gateway_args_doc}
class GatewayArgs {
  /// The backup vswitch id.
  final pulumi.Input<String>? backupVswitchId;

  /// Whether to delete the SLB purchased on behalf of the gateway at the same time.
  final pulumi.Input<bool>? deleteSlb;

  /// Whether the enterprise security group type.
  final pulumi.Input<bool>? enterpriseSecurityGroup;

  /// The name of the Gateway .
  final pulumi.Input<String>? gatewayName;

  /// Public network SLB specifications.
  final pulumi.Input<String>? internetSlbSpec;

  /// Number of Gateway Nodes.
  final pulumi.Input<int> replica;

  /// Private network SLB specifications.
  final pulumi.Input<String>? slbSpec;

  /// Gateway Node Specifications. Valid values: `MSE_GTW_2_4_200_c`, `MSE_GTW_4_8_200_c`, `MSE_GTW_8_16_200_c`, `MSE_GTW_16_32_200_c`.
  final pulumi.Input<String> spec;

  /// The ID of the vpc.
  final pulumi.Input<String> vpcId;

  /// The ID of the vswitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GatewayArgs].
  /// [backupVswitchId] The backup vswitch id.
  /// [deleteSlb] Whether to delete the SLB purchased on behalf of the gateway at the same time.
  /// [enterpriseSecurityGroup] Whether the enterprise security group type.
  /// [gatewayName] The name of the Gateway .
  /// [internetSlbSpec] Public network SLB specifications.
  /// [replica] Number of Gateway Nodes.
  /// [slbSpec] Private network SLB specifications.
  /// [spec] Gateway Node Specifications. Valid values: `MSE_GTW_2_4_200_c`, `MSE_GTW_4_8_200_c`, `MSE_GTW_8_16_200_c`, `MSE_GTW_16_32_200_c`.
  /// [vpcId] The ID of the vpc.
  /// [vswitchId] The ID of the vswitch.
  GatewayArgs({
    this.backupVswitchId,
    this.deleteSlb,
    this.enterpriseSecurityGroup,
    this.gatewayName,
    this.internetSlbSpec,
    required this.replica,
    this.slbSpec,
    required this.spec,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVswitchId': ?backupVswitchId,
      'deleteSlb': ?deleteSlb,
      'enterpriseSecurityGroup': ?enterpriseSecurityGroup,
      'gatewayName': ?gatewayName,
      'internetSlbSpec': ?internetSlbSpec,
      'replica': replica,
      'slbSpec': ?slbSpec,
      'spec': spec,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      backupVswitchId: (() {
        final guardedValue = map['backupVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteSlb: (() {
        final guardedValue = map['deleteSlb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enterpriseSecurityGroup: (() {
        final guardedValue = map['enterpriseSecurityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gatewayName: (() {
        final guardedValue = map['gatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetSlbSpec: (() {
        final guardedValue = map['internetSlbSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replica: pulumi.Input.fromValue(map['replica'] as int),
      slbSpec: (() {
        final guardedValue = map['slbSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
