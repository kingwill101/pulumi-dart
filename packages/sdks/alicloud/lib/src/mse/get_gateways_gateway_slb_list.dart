// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewaysGatewaySlbList {
  /// The associate id.
  final pulumi.Input<String> associateId;
  /// The Mode of the gateway slb.
  final pulumi.Input<String> gatewaySlbMode;
  /// The Status of the gateway slb.
  final pulumi.Input<String> gatewaySlbStatus;
  /// The creation time of the gateway slb.
  final pulumi.Input<String> gmtCreate;
  /// The ID of the gateway slb.
  final pulumi.Input<String> slbId;
  /// The ip of the gateway slb.
  final pulumi.Input<String> slbIp;
  /// The port of the gateway slb.
  final pulumi.Input<String> slbPort;
  /// The type of the gateway slb.
  final pulumi.Input<String> type;

  /// Creates a new [GetGatewaysGatewaySlbList].
  /// [associateId] The associate id.
  /// [gatewaySlbMode] The Mode of the gateway slb.
  /// [gatewaySlbStatus] The Status of the gateway slb.
  /// [gmtCreate] The creation time of the gateway slb.
  /// [slbId] The ID of the gateway slb.
  /// [slbIp] The ip of the gateway slb.
  /// [slbPort] The port of the gateway slb.
  /// [type] The type of the gateway slb.
  GetGatewaysGatewaySlbList({
    required this.associateId,
    required this.gatewaySlbMode,
    required this.gatewaySlbStatus,
    required this.gmtCreate,
    required this.slbId,
    required this.slbIp,
    required this.slbPort,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateId': associateId,
      'gatewaySlbMode': gatewaySlbMode,
      'gatewaySlbStatus': gatewaySlbStatus,
      'gmtCreate': gmtCreate,
      'slbId': slbId,
      'slbIp': slbIp,
      'slbPort': slbPort,
      'type': type,
    };
  }

  factory GetGatewaysGatewaySlbList.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGatewaySlbList(
      associateId: pulumi.Input.fromValue(map['associateId'] as String),
      gatewaySlbMode: pulumi.Input.fromValue(map['gatewaySlbMode'] as String),
      gatewaySlbStatus: pulumi.Input.fromValue(map['gatewaySlbStatus'] as String),
      gmtCreate: pulumi.Input.fromValue(map['gmtCreate'] as String),
      slbId: pulumi.Input.fromValue(map['slbId'] as String),
      slbIp: pulumi.Input.fromValue(map['slbIp'] as String),
      slbPort: pulumi.Input.fromValue(map['slbPort'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

