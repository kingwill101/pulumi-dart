// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_attachment_vpc.dart';

/// {@template pulumi_pvtz_zone_attachment_zone_attachment_args_doc}
/// The set of arguments for ZoneAttachment.
/// {@endtemplate}
/// {@macro pulumi_pvtz_zone_attachment_zone_attachment_args_doc}
class ZoneAttachmentArgs {
  /// The language of code.
  final pulumi.Input<String>? lang;
  /// The user custom IP address.
  final pulumi.Input<String>? userClientIp;
  /// The id List of the VPC with the same region, for example:["vpc-1","vpc-2"].
  final pulumi.Input<List<String>>? vpcIds;
  /// See `vpcs` below.Recommend to use `vpcs`.
  final pulumi.Input<List<ZoneAttachmentVpc>>? vpcs;
  /// The name of the Private Zone Record.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneAttachmentArgs].
  /// [lang] The language of code.
  /// [userClientIp] The user custom IP address.
  /// [vpcIds] The id List of the VPC with the same region, for example:["vpc-1","vpc-2"].
  /// [vpcs] See `vpcs` below.Recommend to use `vpcs`.
  /// [zoneId] The name of the Private Zone Record.
  ZoneAttachmentArgs({
    String? lang,
    String? userClientIp,
    List<String>? vpcIds,
    List<ZoneAttachmentVpc>? vpcs,
    required String zoneId,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds),
      vpcs = pulumi.Input.asOptionalInput<List<ZoneAttachmentVpc>>(vpcs),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'userClientIp': ?userClientIp,
      'vpcIds': ?vpcIds,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<ZoneAttachmentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<ZoneAttachmentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory ZoneAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ZoneAttachmentArgs(
      lang: map['lang'] == null ? null : map['lang'] as String,
      userClientIp: map['userClientIp'] == null ? null : map['userClientIp'] as String,
      vpcIds: map['vpcIds'] == null ? null : (map['vpcIds'] as List).cast<String>(),
      vpcs: map['vpcs'] == null ? null : pulumi.Input.decodeList<ZoneAttachmentVpc>(map['vpcs'], (value) => ZoneAttachmentVpc.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}

