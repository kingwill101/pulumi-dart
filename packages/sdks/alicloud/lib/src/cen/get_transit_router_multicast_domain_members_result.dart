// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_multicast_domain_members_member.dart';

/// Result data returned by getTransitRouterMulticastDomainMembers.
class GetTransitRouterMulticastDomainMembersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Transit Router Multicast Domain Member Entries. Each element contains the following attributes:
  final List<GetTransitRouterMulticastDomainMembersMember> members;
  /// ENI ID of multicast member.
  final String? networkInterfaceId;
  final String? outputFile;
  /// The ID of the multicast domain to which the multicast member belongs.
  final String transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainMembersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [members] A list of Transit Router Multicast Domain Member Entries. Each element contains the following attributes:
  /// [networkInterfaceId] ENI ID of multicast member.
  /// [outputFile] Optional.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  const GetTransitRouterMulticastDomainMembersResult({
    required this.id,
    required this.ids,
    required this.members,
    this.networkInterfaceId,
    this.outputFile,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'members': pulumi.Input.encodeList<GetTransitRouterMulticastDomainMembersMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'networkInterfaceId': ?networkInterfaceId,
      'outputFile': ?outputFile,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainMembersResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainMembersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      members: pulumi.Input.decodeList<GetTransitRouterMulticastDomainMembersMember>(map['members']!, (value) => GetTransitRouterMulticastDomainMembersMember.fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
    );
  }
}

