// ignore_for_file: unused_element, unnecessary_cast


class GetGatewaysGatewaySlbList {
  /// The associate id.
  final String associateId;
  /// The Mode of the gateway slb.
  final String gatewaySlbMode;
  /// The Status of the gateway slb.
  final String gatewaySlbStatus;
  /// The creation time of the gateway slb.
  final String gmtCreate;
  /// The ID of the gateway slb.
  final String slbId;
  /// The ip of the gateway slb.
  final String slbIp;
  /// The port of the gateway slb.
  final String slbPort;
  /// The type of the gateway slb.
  final String type;

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
      associateId: map['associateId'] as String,
      gatewaySlbMode: map['gatewaySlbMode'] as String,
      gatewaySlbStatus: map['gatewaySlbStatus'] as String,
      gmtCreate: map['gmtCreate'] as String,
      slbId: map['slbId'] as String,
      slbIp: map['slbIp'] as String,
      slbPort: map['slbPort'] as String,
      type: map['type'] as String,
    );
  }
}

