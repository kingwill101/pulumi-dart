// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_slb_list.dart';

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
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
  final pulumi.Input<int>? replica;
  /// A list of gateway Slb.
  final pulumi.Input<List<GatewaySlbList>>? slbLists;
  /// Private network SLB specifications.
  final pulumi.Input<String>? slbSpec;
  /// Gateway Node Specifications. Valid values: `MSE_GTW_2_4_200_c`, `MSE_GTW_4_8_200_c`, `MSE_GTW_8_16_200_c`, `MSE_GTW_16_32_200_c`.
  final pulumi.Input<String>? spec;
  /// The status of the gateway.
  final pulumi.Input<String>? status;
  /// The ID of the vpc.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vswitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayState].
  /// [backupVswitchId] The backup vswitch id.
  /// [deleteSlb] Whether to delete the SLB purchased on behalf of the gateway at the same time.
  /// [enterpriseSecurityGroup] Whether the enterprise security group type.
  /// [gatewayName] The name of the Gateway .
  /// [internetSlbSpec] Public network SLB specifications.
  /// [replica] Number of Gateway Nodes.
  /// [slbLists] A list of gateway Slb.
  /// [slbSpec] Private network SLB specifications.
  /// [spec] Gateway Node Specifications. Valid values: `MSE_GTW_2_4_200_c`, `MSE_GTW_4_8_200_c`, `MSE_GTW_8_16_200_c`, `MSE_GTW_16_32_200_c`.
  /// [status] The status of the gateway.
  /// [vpcId] The ID of the vpc.
  /// [vswitchId] The ID of the vswitch.
  GatewayState({
    pulumi.Output<String>? backupVswitchId,
    pulumi.Output<bool>? deleteSlb,
    pulumi.Output<bool>? enterpriseSecurityGroup,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<String>? internetSlbSpec,
    pulumi.Output<int>? replica,
    pulumi.Output<List<GatewaySlbList>>? slbLists,
    pulumi.Output<String>? slbSpec,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      backupVswitchId = pulumi.Input.asOptionalInput<String>(backupVswitchId),
      deleteSlb = pulumi.Input.asOptionalInput<bool>(deleteSlb),
      enterpriseSecurityGroup = pulumi.Input.asOptionalInput<bool>(enterpriseSecurityGroup),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      internetSlbSpec = pulumi.Input.asOptionalInput<String>(internetSlbSpec),
      replica = pulumi.Input.asOptionalInput<int>(replica),
      slbLists = pulumi.Input.asOptionalInput<List<GatewaySlbList>>(slbLists),
      slbSpec = pulumi.Input.asOptionalInput<String>(slbSpec),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVswitchId': ?backupVswitchId,
      'deleteSlb': ?deleteSlb,
      'enterpriseSecurityGroup': ?enterpriseSecurityGroup,
      'gatewayName': ?gatewayName,
      'internetSlbSpec': ?internetSlbSpec,
      'replica': ?replica,
      'slbLists': ?pulumi.Input.mapOptionalInputValue<List<GatewaySlbList>, List<Map<String, dynamic>>>(slbLists, (value) => pulumi.Input.encodeList<GatewaySlbList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slbSpec': ?slbSpec,
      'spec': ?spec,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      backupVswitchId: map['backupVswitchId'] == null ? null : pulumi.Output.create<String>(map['backupVswitchId'] as String),
      deleteSlb: map['deleteSlb'] == null ? null : pulumi.Output.create<bool>(map['deleteSlb'] as bool),
      enterpriseSecurityGroup: map['enterpriseSecurityGroup'] == null ? null : pulumi.Output.create<bool>(map['enterpriseSecurityGroup'] as bool),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      internetSlbSpec: map['internetSlbSpec'] == null ? null : pulumi.Output.create<String>(map['internetSlbSpec'] as String),
      replica: map['replica'] == null ? null : pulumi.Output.create<int>(map['replica'] as int),
      slbLists: map['slbLists'] == null ? null : pulumi.Output.create<List<GatewaySlbList>>(pulumi.Input.decodeList<GatewaySlbList>(map['slbLists'], (value) => GatewaySlbList.fromMap((value as Map).cast<String, dynamic>()))),
      slbSpec: map['slbSpec'] == null ? null : pulumi.Output.create<String>(map['slbSpec'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

