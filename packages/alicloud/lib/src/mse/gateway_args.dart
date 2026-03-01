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
    String? backupVswitchId,
    bool? deleteSlb,
    bool? enterpriseSecurityGroup,
    String? gatewayName,
    String? internetSlbSpec,
    required int replica,
    String? slbSpec,
    required String spec,
    required String vpcId,
    required String vswitchId,
  }) :
      backupVswitchId = pulumi.Input.asOptionalInput<String>(backupVswitchId),
      deleteSlb = pulumi.Input.asOptionalInput<bool>(deleteSlb),
      enterpriseSecurityGroup = pulumi.Input.asOptionalInput<bool>(enterpriseSecurityGroup),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      internetSlbSpec = pulumi.Input.asOptionalInput<String>(internetSlbSpec),
      replica = pulumi.Input.asInput<int>(replica),
      slbSpec = pulumi.Input.asOptionalInput<String>(slbSpec),
      spec = pulumi.Input.asInput<String>(spec),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      backupVswitchId: map['backupVswitchId'] == null ? null : map['backupVswitchId'] as String,
      deleteSlb: map['deleteSlb'] == null ? null : map['deleteSlb'] as bool,
      enterpriseSecurityGroup: map['enterpriseSecurityGroup'] == null ? null : map['enterpriseSecurityGroup'] as bool,
      gatewayName: map['gatewayName'] == null ? null : map['gatewayName'] as String,
      internetSlbSpec: map['internetSlbSpec'] == null ? null : map['internetSlbSpec'] as String,
      replica: map['replica'] as int,
      slbSpec: map['slbSpec'] == null ? null : map['slbSpec'] as String,
      spec: map['spec'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

