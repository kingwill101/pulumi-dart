// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway_slb_list.dart';

class GetGatewaysGateway {
  /// The backup vswitch id.
  final pulumi.Input<String> backupVswitchId;
  /// The name of the Gateway.
  final pulumi.Input<String> gatewayName;
  /// Gateway unique identification.
  final pulumi.Input<String> gatewayUniqueId;
  /// The ID of the Gateway.
  final pulumi.Input<String> id;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// Number of Gateway Nodes.
  final pulumi.Input<String> replica;
  /// A list of gateway Slb.
  final pulumi.Input<List<GetGatewaysGatewaySlbList>> slbLists;
  /// Gateway Node Specifications.
  final pulumi.Input<String> spec;
  /// The status of the gateway.
  final pulumi.Input<String> status;
  /// The ID of the vpc.
  final pulumi.Input<String> vpcId;
  /// The ID of the vswitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetGatewaysGateway].
  /// [backupVswitchId] The backup vswitch id.
  /// [gatewayName] The name of the Gateway.
  /// [gatewayUniqueId] Gateway unique identification.
  /// [id] The ID of the Gateway.
  /// [paymentType] The payment type of the resource.
  /// [replica] Number of Gateway Nodes.
  /// [slbLists] A list of gateway Slb.
  /// [spec] Gateway Node Specifications.
  /// [status] The status of the gateway.
  /// [vpcId] The ID of the vpc.
  /// [vswitchId] The ID of the vswitch.
  GetGatewaysGateway({
    required this.backupVswitchId,
    required this.gatewayName,
    required this.gatewayUniqueId,
    required this.id,
    required this.paymentType,
    required this.replica,
    required this.slbLists,
    required this.spec,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVswitchId': backupVswitchId,
      'gatewayName': gatewayName,
      'gatewayUniqueId': gatewayUniqueId,
      'id': id,
      'paymentType': paymentType,
      'replica': replica,
      'slbLists': pulumi.Input.mapInputValue<List<GetGatewaysGatewaySlbList>, List<Map<String, dynamic>>>(slbLists, (value) => pulumi.Input.encodeList<GetGatewaysGatewaySlbList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spec': spec,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGateway(
      backupVswitchId: (map['backupVswitchId'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      gatewayUniqueId: (map['gatewayUniqueId'] as String).input(),
      id: (map['id'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      replica: (map['replica'] as String).input(),
      slbLists: (pulumi.Input.decodeList<GetGatewaysGatewaySlbList>(map['slbLists'], (value) => GetGatewaysGatewaySlbList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spec: (map['spec'] as String).input(),
      status: (map['status'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

