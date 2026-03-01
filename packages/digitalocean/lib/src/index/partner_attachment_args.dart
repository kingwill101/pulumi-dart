// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_attachment_bgp.dart';

/// {@template pulumi_index_partner_attachment_partner_attachment_args_doc}
/// The set of arguments for PartnerAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_partner_attachment_partner_attachment_args_doc}
class PartnerAttachmentArgs {
  final pulumi.Input<PartnerAttachmentBgp>? bgp;
  /// The connection bandwidth in Mbps
  final pulumi.Input<int> connectionBandwidthInMbps;
  /// The NaaS provider
  final pulumi.Input<String> naasProvider;
  /// The name of the Partner Attachment
  final pulumi.Input<String>? name;
  /// The UUID of the Parent Partner Attachment
  final pulumi.Input<String>? parentUuid;
  /// The redundancy zone for the NaaS
  final pulumi.Input<String>? redundancyZone;
  /// The region where the Partner Attachment will be created
  final pulumi.Input<String> region;
  /// The list of VPC IDs to attach the Partner Attachment to
  final pulumi.Input<List<String>> vpcIds;

  /// Creates a new [PartnerAttachmentArgs].
  /// [bgp] Optional.
  /// [connectionBandwidthInMbps] The connection bandwidth in Mbps
  /// [naasProvider] The NaaS provider
  /// [name] The name of the Partner Attachment
  /// [parentUuid] The UUID of the Parent Partner Attachment
  /// [redundancyZone] The redundancy zone for the NaaS
  /// [region] The region where the Partner Attachment will be created
  /// [vpcIds] The list of VPC IDs to attach the Partner Attachment to
  PartnerAttachmentArgs({
    PartnerAttachmentBgp? bgp,
    required int connectionBandwidthInMbps,
    required String naasProvider,
    String? name,
    String? parentUuid,
    String? redundancyZone,
    required String region,
    required List<String> vpcIds,
  }) :
      bgp = pulumi.Input.asOptionalInput<PartnerAttachmentBgp>(bgp),
      connectionBandwidthInMbps = pulumi.Input.asInput<int>(connectionBandwidthInMbps),
      naasProvider = pulumi.Input.asInput<String>(naasProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentUuid = pulumi.Input.asOptionalInput<String>(parentUuid),
      redundancyZone = pulumi.Input.asOptionalInput<String>(redundancyZone),
      region = pulumi.Input.asInput<String>(region),
      vpcIds = pulumi.Input.asInput<List<String>>(vpcIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<PartnerAttachmentBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'connectionBandwidthInMbps': connectionBandwidthInMbps,
      'naasProvider': naasProvider,
      'name': ?name,
      'parentUuid': ?parentUuid,
      'redundancyZone': ?redundancyZone,
      'region': region,
      'vpcIds': vpcIds,
    };
  }

  factory PartnerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PartnerAttachmentArgs(
      bgp: map['bgp'] == null ? null : PartnerAttachmentBgp.fromMap((map['bgp'] as Map).cast<String, dynamic>()),
      connectionBandwidthInMbps: map['connectionBandwidthInMbps'] as int,
      naasProvider: map['naasProvider'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parentUuid: map['parentUuid'] == null ? null : map['parentUuid'] as String,
      redundancyZone: map['redundancyZone'] == null ? null : map['redundancyZone'] as String,
      region: map['region'] as String,
      vpcIds: (map['vpcIds'] as List).cast<String>(),
    );
  }
}

