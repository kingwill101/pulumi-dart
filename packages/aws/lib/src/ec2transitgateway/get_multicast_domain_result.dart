// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multicast_domain_association.dart';
import 'get_multicast_domain_filter.dart';
import 'get_multicast_domain_member.dart';
import 'get_multicast_domain_source.dart';

/// Result data returned by getMulticastDomain.
class GetMulticastDomainResult {
  /// EC2 Transit Gateway Multicast Domain ARN.
  final String arn;

  /// EC2 Transit Gateway Multicast Domain Associations
  final List<GetMulticastDomainAssociation> associations;

  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain.
  final String autoAcceptSharedAssociations;
  final List<GetMulticastDomainFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain.
  final String igmpv2Support;

  /// EC2 Multicast Domain Group Members
  final List<GetMulticastDomainMember> members;

  /// Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  final String ownerId;
  final String region;

  /// EC2 Multicast Domain Group Sources
  final List<GetMulticastDomainSource> sources;
  final String state;

  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain.
  final String staticSourcesSupport;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain.
  final Map<String, String> tags;

  /// The ID of the transit gateway attachment.
  final String transitGatewayAttachmentId;

  /// EC2 Transit Gateway identifier.
  final String transitGatewayId;
  final String transitGatewayMulticastDomainId;

  /// Creates a new [GetMulticastDomainResult].
  /// [arn] EC2 Transit Gateway Multicast Domain ARN.
  /// [associations] EC2 Transit Gateway Multicast Domain Associations
  /// [autoAcceptSharedAssociations] Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [igmpv2Support] Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain.
  /// [members] EC2 Multicast Domain Group Members
  /// [ownerId] Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  /// [region] Required.
  /// [sources] EC2 Multicast Domain Group Sources
  /// [state] Required.
  /// [staticSourcesSupport] Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain.
  /// [tags] Key-value tags for the EC2 Transit Gateway Multicast Domain.
  /// [transitGatewayAttachmentId] The ID of the transit gateway attachment.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  /// [transitGatewayMulticastDomainId] Required.
  GetMulticastDomainResult({
    required this.arn,
    required this.associations,
    required this.autoAcceptSharedAssociations,
    this.filters,
    required this.id,
    required this.igmpv2Support,
    required this.members,
    required this.ownerId,
    required this.region,
    required this.sources,
    required this.state,
    required this.staticSourcesSupport,
    required this.tags,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayId,
    required this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associations'] = pulumi.Input.encodeList<GetMulticastDomainAssociation,
        Map<String, dynamic>>(associations, (value) => value.toMap());
    map['autoAcceptSharedAssociations'] = autoAcceptSharedAssociations;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetMulticastDomainFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['igmpv2Support'] = igmpv2Support;
    map['members'] =
        pulumi.Input.encodeList<GetMulticastDomainMember, Map<String, dynamic>>(
            members, (value) => value.toMap());
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['sources'] =
        pulumi.Input.encodeList<GetMulticastDomainSource, Map<String, dynamic>>(
            sources, (value) => value.toMap());
    map['state'] = state;
    map['staticSourcesSupport'] = staticSourcesSupport;
    map['tags'] = tags;
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    map['transitGatewayId'] = transitGatewayId;
    map['transitGatewayMulticastDomainId'] = transitGatewayMulticastDomainId;
    return map;
  }

  factory GetMulticastDomainResult.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainResult(
      arn: map['arn'] as String,
      associations: pulumi.Input.decodeList<GetMulticastDomainAssociation>(
          map['associations'],
          (value) => GetMulticastDomainAssociation.fromMap(
              (value as Map).cast<String, dynamic>())),
      autoAcceptSharedAssociations:
          map['autoAcceptSharedAssociations'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetMulticastDomainFilter>(
              map['filters'],
              (value) => GetMulticastDomainFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      igmpv2Support: map['igmpv2Support'] as String,
      members: pulumi.Input.decodeList<GetMulticastDomainMember>(
          map['members'],
          (value) => GetMulticastDomainMember.fromMap(
              (value as Map).cast<String, dynamic>())),
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      sources: pulumi.Input.decodeList<GetMulticastDomainSource>(
          map['sources'],
          (value) => GetMulticastDomainSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      staticSourcesSupport: map['staticSourcesSupport'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      transitGatewayMulticastDomainId:
          map['transitGatewayMulticastDomainId'] as String,
    );
  }
}
