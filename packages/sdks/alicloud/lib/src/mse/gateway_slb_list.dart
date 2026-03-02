// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewaySlbList {
  /// The associate id.
  final pulumi.Input<String>? associateId;
  /// The Mode of the gateway slb.
  final pulumi.Input<String>? gatewaySlbMode;
  /// The Status of the gateway slb.
  final pulumi.Input<String>? gatewaySlbStatus;
  /// The creation time of the gateway slb.
  final pulumi.Input<String>? gmtCreate;
  /// The ID of the gateway slb.
  final pulumi.Input<String>? slbId;
  /// The ip of the gateway slb.
  final pulumi.Input<String>? slbIp;
  /// The port of the gateway slb.
  final pulumi.Input<String>? slbPort;
  /// The type of the gateway slb.
  final pulumi.Input<String>? type;

  /// Creates a new [GatewaySlbList].
  /// [associateId] The associate id.
  /// [gatewaySlbMode] The Mode of the gateway slb.
  /// [gatewaySlbStatus] The Status of the gateway slb.
  /// [gmtCreate] The creation time of the gateway slb.
  /// [slbId] The ID of the gateway slb.
  /// [slbIp] The ip of the gateway slb.
  /// [slbPort] The port of the gateway slb.
  /// [type] The type of the gateway slb.
  GatewaySlbList({
    this.associateId,
    this.gatewaySlbMode,
    this.gatewaySlbStatus,
    this.gmtCreate,
    this.slbId,
    this.slbIp,
    this.slbPort,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateId': ?associateId,
      'gatewaySlbMode': ?gatewaySlbMode,
      'gatewaySlbStatus': ?gatewaySlbStatus,
      'gmtCreate': ?gmtCreate,
      'slbId': ?slbId,
      'slbIp': ?slbIp,
      'slbPort': ?slbPort,
      'type': ?type,
    };
  }

  factory GatewaySlbList.fromMap(Map<String, dynamic> map) {
    return GatewaySlbList(
      associateId: map['associateId'] == null ? null : (map['associateId'] as String).input(),
      gatewaySlbMode: map['gatewaySlbMode'] == null ? null : (map['gatewaySlbMode'] as String).input(),
      gatewaySlbStatus: map['gatewaySlbStatus'] == null ? null : (map['gatewaySlbStatus'] as String).input(),
      gmtCreate: map['gmtCreate'] == null ? null : (map['gmtCreate'] as String).input(),
      slbId: map['slbId'] == null ? null : (map['slbId'] as String).input(),
      slbIp: map['slbIp'] == null ? null : (map['slbIp'] as String).input(),
      slbPort: map['slbPort'] == null ? null : (map['slbPort'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

