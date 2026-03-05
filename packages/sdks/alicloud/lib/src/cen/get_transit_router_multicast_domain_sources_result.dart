// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_multicast_domain_sources_source.dart';

/// Result data returned by getTransitRouterMulticastDomainSources.
class GetTransitRouterMulticastDomainSourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// A list of Transit Router Multicast Domain Source Entries. Each element contains the following attributes:
  final List<GetTransitRouterMulticastDomainSourcesSource> sources;
  /// The ID of the multicast domain to which the multicast source belongs.
  final String transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainSourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [sources] A list of Transit Router Multicast Domain Source Entries. Each element contains the following attributes:
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast source belongs.
  GetTransitRouterMulticastDomainSourcesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.sources,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'sources': pulumi.Input.encodeList<GetTransitRouterMulticastDomainSourcesSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainSourcesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sources: pulumi.Input.decodeList<GetTransitRouterMulticastDomainSourcesSource>(map['sources']!, (value) => GetTransitRouterMulticastDomainSourcesSource.fromMap((value as Map).cast<String, dynamic>())),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
    );
  }
}

