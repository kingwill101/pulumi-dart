// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_multicast_domains_domain.dart';

/// Result data returned by getTransitRouterMulticastDomains.
class GetTransitRouterMulticastDomainsResult {
  /// A list of Cen Transit Router Multicast Domains. Each element contains the following attributes:
  final List<GetTransitRouterMulticastDomainsDomain> domains;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Transit Router Multicast Domain names.
  final List<String> names;
  final String? outputFile;
  /// The status of the Transit Router Multicast Domain.
  final String? status;
  /// The ID of the transit router.
  final String transitRouterId;
  /// The ID of the Transit Router Multicast Domain.
  final String? transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainsResult].
  /// [domains] A list of Cen Transit Router Multicast Domains. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Transit Router Multicast Domain names.
  /// [outputFile] Optional.
  /// [status] The status of the Transit Router Multicast Domain.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterMulticastDomainId] The ID of the Transit Router Multicast Domain.
  GetTransitRouterMulticastDomainsResult({
    required this.domains,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.transitRouterId,
    this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetTransitRouterMulticastDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': transitRouterId,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainsResult(
      domains: pulumi.Input.decodeList<GetTransitRouterMulticastDomainsDomain>(map['domains'], (value) => GetTransitRouterMulticastDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transitRouterId: map['transitRouterId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : map['transitRouterMulticastDomainId'] as String,
    );
  }
}

