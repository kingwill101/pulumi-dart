// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_multicast_domain_peer_members_get_transit_router_multicast_domain_peer_members_args_doc}
/// Arguments for getTransitRouterMulticastDomainPeerMembers.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_multicast_domain_peer_members_get_transit_router_multicast_domain_peer_members_args_doc}
class GetTransitRouterMulticastDomainPeerMembersArgs {
  /// A list of Cen Transit Router Multicast Domain Peer Member IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The IDs of the inter-region multicast domains.
  final pulumi.Input<List<String>>? peerTransitRouterMulticastDomains;

  /// The ID of the resource associated with the multicast resource.
  final pulumi.Input<String>? resourceId;

  /// The type of the multicast resource. Valid values:
  /// * VPC: queries multicast resources by VPC.
  /// * TR: queries multicast resources that are also deployed in a different region.
  final pulumi.Input<String>? resourceType;

  /// The ID of the network instance connection.
  final pulumi.Input<String>? transitRouterAttachmentId;

  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainPeerMembersArgs].
  /// [ids] A list of Cen Transit Router Multicast Domain Peer Member IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [peerTransitRouterMulticastDomains] The IDs of the inter-region multicast domains.
  /// [resourceId] The ID of the resource associated with the multicast resource.
  /// [resourceType] The type of the multicast resource. Valid values:
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  GetTransitRouterMulticastDomainPeerMembersArgs({
    this.ids,
    this.outputFile,
    this.peerTransitRouterMulticastDomains,
    this.resourceId,
    this.resourceType,
    this.transitRouterAttachmentId,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'peerTransitRouterMulticastDomains': ?peerTransitRouterMulticastDomains,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainPeerMembersArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterMulticastDomainPeerMembersArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerTransitRouterMulticastDomains: (() {
        final guardedValue = map['peerTransitRouterMulticastDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterAttachmentId: (() {
        final guardedValue = map['transitRouterAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['transitRouterMulticastDomainId'] as String,
      ),
    );
  }
}
