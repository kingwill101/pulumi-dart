// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_attachment_vpc.dart';

/// Input properties used for looking up and filtering ZoneAttachment resources.
class ZoneAttachmentState {
  /// The language of code.
  final pulumi.Input<String>? lang;
  /// The user custom IP address.
  final pulumi.Input<String>? userClientIp;
  /// The id List of the VPC with the same region, for example:["vpc-1","vpc-2"].
  final pulumi.Input<List<String>>? vpcIds;
  /// See `vpcs` below.Recommend to use `vpcs`.
  final pulumi.Input<List<ZoneAttachmentVpc>>? vpcs;
  /// The name of the Private Zone Record.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ZoneAttachmentState].
  /// [lang] The language of code.
  /// [userClientIp] The user custom IP address.
  /// [vpcIds] The id List of the VPC with the same region, for example:["vpc-1","vpc-2"].
  /// [vpcs] See `vpcs` below.Recommend to use `vpcs`.
  /// [zoneId] The name of the Private Zone Record.
  ZoneAttachmentState({
    this.lang,
    this.userClientIp,
    this.vpcIds,
    this.vpcs,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'userClientIp': ?userClientIp,
      'vpcIds': ?vpcIds,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<ZoneAttachmentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<ZoneAttachmentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ZoneAttachmentState.fromMap(Map<String, dynamic> map) {
    return ZoneAttachmentState(
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userClientIp: (() { final guardedValue = map['userClientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneAttachmentVpc>(guardedValue, (value) => ZoneAttachmentVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

