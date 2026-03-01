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
    pulumi.Output<String>? lang,
    pulumi.Output<String>? userClientIp,
    pulumi.Output<List<String>>? vpcIds,
    pulumi.Output<List<ZoneAttachmentVpc>>? vpcs,
    pulumi.Output<String>? zoneId,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds),
      vpcs = pulumi.Input.asOptionalInput<List<ZoneAttachmentVpc>>(vpcs),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      vpcIds: map['vpcIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcIds'] as List).cast<String>()),
      vpcs: map['vpcs'] == null ? null : pulumi.Output.create<List<ZoneAttachmentVpc>>(pulumi.Input.decodeList<ZoneAttachmentVpc>(map['vpcs'], (value) => ZoneAttachmentVpc.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

