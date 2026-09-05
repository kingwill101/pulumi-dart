// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multicast_domain_association.dart';
import 'get_multicast_domain_filter.dart';
import 'get_multicast_domain_member.dart';
import 'get_multicast_domain_source.dart';

/// Result data returned by getMulticastDomain.
class GetMulticastDomainResult {
  /// EC2 Transit Gateway Multicast Domain ARN.
  final String? arn;
  /// EC2 Transit Gateway Multicast Domain Associations
  final List<GetMulticastDomainAssociation>? associations;
  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain.
  final String? autoAcceptSharedAssociations;
  final List<GetMulticastDomainFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain.
  final String? igmpv2Support;
  /// EC2 Multicast Domain Group Members
  final List<GetMulticastDomainMember>? members;
  /// Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  final String? ownerId;
  final String? region;
  /// EC2 Multicast Domain Group Sources
  final List<GetMulticastDomainSource>? sources;
  final String? state;
  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain.
  final String? staticSourcesSupport;
  /// Key-value tags for the EC2 Transit Gateway Multicast Domain.
  final Map<String, String>? tags;
  /// The ID of the transit gateway attachment.
  final String? transitGatewayAttachmentId;
  /// EC2 Transit Gateway identifier.
  final String? transitGatewayId;
  final String? transitGatewayMulticastDomainId;

  /// Creates a new [GetMulticastDomainResult].
  /// [arn] EC2 Transit Gateway Multicast Domain ARN.
  /// [associations] EC2 Transit Gateway Multicast Domain Associations
  /// [autoAcceptSharedAssociations] Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [igmpv2Support] Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain.
  /// [members] EC2 Multicast Domain Group Members
  /// [ownerId] Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  /// [region] Optional.
  /// [sources] EC2 Multicast Domain Group Sources
  /// [state] Optional.
  /// [staticSourcesSupport] Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain.
  /// [tags] Key-value tags for the EC2 Transit Gateway Multicast Domain.
  /// [transitGatewayAttachmentId] The ID of the transit gateway attachment.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  /// [transitGatewayMulticastDomainId] Optional.
  const GetMulticastDomainResult({
    this.arn,
    this.associations,
    this.autoAcceptSharedAssociations,
    this.filters,
    this.id,
    this.igmpv2Support,
    this.members,
    this.ownerId,
    this.region,
    this.sources,
    this.state,
    this.staticSourcesSupport,
    this.tags,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
    this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associations': ?(() { final guardedValue = associations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMulticastDomainAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoAcceptSharedAssociations': ?autoAcceptSharedAssociations,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMulticastDomainFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'igmpv2Support': ?igmpv2Support,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMulticastDomainMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ownerId': ?ownerId,
      'region': ?region,
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMulticastDomainSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'staticSourcesSupport': ?staticSourcesSupport,
      'tags': ?tags,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayMulticastDomainId': ?transitGatewayMulticastDomainId,
    };
  }

  factory GetMulticastDomainResult.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMulticastDomainAssociation>(guardedValue, (value) => GetMulticastDomainAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoAcceptSharedAssociations: (() { final guardedValue = map['autoAcceptSharedAssociations']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMulticastDomainFilter>(guardedValue, (value) => GetMulticastDomainFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      igmpv2Support: (() { final guardedValue = map['igmpv2Support']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMulticastDomainMember>(guardedValue, (value) => GetMulticastDomainMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMulticastDomainSource>(guardedValue, (value) => GetMulticastDomainSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticSourcesSupport: (() { final guardedValue = map['staticSourcesSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayMulticastDomainId: (() { final guardedValue = map['transitGatewayMulticastDomainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
