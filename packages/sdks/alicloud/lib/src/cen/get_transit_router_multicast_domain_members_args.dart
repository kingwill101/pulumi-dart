// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_multicast_domain_members_get_transit_router_multicast_domain_members_args_doc}
/// Arguments for getTransitRouterMulticastDomainMembers.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_multicast_domain_members_get_transit_router_multicast_domain_members_args_doc}
class GetTransitRouterMulticastDomainMembersArgs {
  /// A list of Transit Router Multicast Domain Member IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the ENI.
  final pulumi.Input<String>? networkInterfaceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainMembersArgs].
  /// [ids] A list of Transit Router Multicast Domain Member IDs.
  /// [networkInterfaceId] The ID of the ENI.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  GetTransitRouterMulticastDomainMembersArgs({
    this.ids,
    this.networkInterfaceId,
    this.outputFile,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'networkInterfaceId': ?networkInterfaceId,
      'outputFile': ?outputFile,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainMembersArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      transitRouterMulticastDomainId: (map['transitRouterMulticastDomainId'] as String).input(),
    );
  }
}

