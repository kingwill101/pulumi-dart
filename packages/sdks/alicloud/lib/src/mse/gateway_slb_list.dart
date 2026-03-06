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
  const GatewaySlbList({
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
      associateId: (() { final guardedValue = map['associateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewaySlbMode: (() { final guardedValue = map['gatewaySlbMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewaySlbStatus: (() { final guardedValue = map['gatewaySlbStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmtCreate: (() { final guardedValue = map['gmtCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slbId: (() { final guardedValue = map['slbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slbIp: (() { final guardedValue = map['slbIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slbPort: (() { final guardedValue = map['slbPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

