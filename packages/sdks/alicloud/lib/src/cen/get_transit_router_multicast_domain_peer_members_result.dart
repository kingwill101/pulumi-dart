// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_multicast_domain_peer_members_member.dart';

/// Result data returned by getTransitRouterMulticastDomainPeerMembers.
class GetTransitRouterMulticastDomainPeerMembersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Transit Router Multicast Domain Peer Member Entries. Each element contains the following attributes:
  final List<GetTransitRouterMulticastDomainPeerMembersMember> members;
  final String? outputFile;
  final List<String>? peerTransitRouterMulticastDomains;
  final String? resourceId;
  final String? resourceType;
  final String? transitRouterAttachmentId;
  /// The ID of the multicast domain to which the multicast member belongs.
  final String transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainPeerMembersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [members] A list of Transit Router Multicast Domain Peer Member Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [peerTransitRouterMulticastDomains] Optional.
  /// [resourceId] Optional.
  /// [resourceType] Optional.
  /// [transitRouterAttachmentId] Optional.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  GetTransitRouterMulticastDomainPeerMembersResult({
    required this.id,
    required this.ids,
    required this.members,
    this.outputFile,
    this.peerTransitRouterMulticastDomains,
    this.resourceId,
    this.resourceType,
    this.transitRouterAttachmentId,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'members': pulumi.Input.encodeList<GetTransitRouterMulticastDomainPeerMembersMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'peerTransitRouterMulticastDomains': ?peerTransitRouterMulticastDomains,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainPeerMembersResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainPeerMembersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      members: pulumi.Input.decodeList<GetTransitRouterMulticastDomainPeerMembersMember>(map['members'], (value) => GetTransitRouterMulticastDomainPeerMembersMember.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      peerTransitRouterMulticastDomains: map['peerTransitRouterMulticastDomains'] == null ? null : (map['peerTransitRouterMulticastDomains'] as List).cast<String>(),
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
    );
  }
}

