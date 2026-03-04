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
    this.backupVswitchId,
    this.deleteSlb,
    this.enterpriseSecurityGroup,
    this.gatewayName,
    this.internetSlbSpec,
    this.replica,
    this.slbLists,
    this.slbSpec,
    this.spec,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVswitchId': ?backupVswitchId,
      'deleteSlb': ?deleteSlb,
      'enterpriseSecurityGroup': ?enterpriseSecurityGroup,
      'gatewayName': ?gatewayName,
      'internetSlbSpec': ?internetSlbSpec,
      'replica': ?replica,
      'slbLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<GatewaySlbList>,
            List<Map<String, dynamic>>
          >(
            slbLists,
            (value) =>
                pulumi.Input.encodeList<GatewaySlbList, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'slbSpec': ?slbSpec,
      'spec': ?spec,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
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
      replica: (() {
        final guardedValue = map['replica'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      slbLists: (() {
        final guardedValue = map['slbLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GatewaySlbList>(
            guardedValue,
            (value) =>
                GatewaySlbList.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      slbSpec: (() {
        final guardedValue = map['slbSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
