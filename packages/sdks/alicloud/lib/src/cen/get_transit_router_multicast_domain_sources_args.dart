// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_multicast_domain_sources_get_transit_router_multicast_domain_sources_args_doc}
/// Arguments for getTransitRouterMulticastDomainSources.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_multicast_domain_sources_get_transit_router_multicast_domain_sources_args_doc}
class GetTransitRouterMulticastDomainSourcesArgs {
  /// A list of the multicast domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the multicast domain to which the multicast source belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainSourcesArgs].
  /// [ids] A list of the multicast domain IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast source belongs.
  GetTransitRouterMulticastDomainSourcesArgs({
    this.ids,
    this.outputFile,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainSourcesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      transitRouterMulticastDomainId: (map['transitRouterMulticastDomainId'] as String).input(),
    );
  }
}

