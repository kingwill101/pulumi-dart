// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_routing_enrichment_response.dart';
import 'static_string_routing_enrichment_response.dart';

class RoutingEnrichmentsResponse {
  final List<DynamicRoutingEnrichmentResponse>? dynamic;
  final List<StaticStringRoutingEnrichmentResponse>? static;

  /// Creates a new [RoutingEnrichmentsResponse].
  /// [dynamic] Optional.
  /// [static] Optional.
  RoutingEnrichmentsResponse({
    this.dynamic,
    this.static,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamic': ?dynamic == null ? null : pulumi.Input.encodeList<DynamicRoutingEnrichmentResponse, Map<String, dynamic>>(dynamic!, (value) => value.toMap()),
      'static': ?static == null ? null : pulumi.Input.encodeList<StaticStringRoutingEnrichmentResponse, Map<String, dynamic>>(static!, (value) => value.toMap()),
    };
  }

  factory RoutingEnrichmentsResponse.fromMap(Map<String, dynamic> map) {
    return RoutingEnrichmentsResponse(
      dynamic: map['dynamic'] == null ? null : pulumi.Input.decodeList<DynamicRoutingEnrichmentResponse>(map['dynamic'], (value) => DynamicRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      static: map['static'] == null ? null : pulumi.Input.decodeList<StaticStringRoutingEnrichmentResponse>(map['static'], (value) => StaticStringRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

