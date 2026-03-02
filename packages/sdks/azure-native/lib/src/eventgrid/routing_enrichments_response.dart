// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_routing_enrichment_response.dart';
import 'static_string_routing_enrichment_response.dart';

class RoutingEnrichmentsResponse {
  final pulumi.Input<List<DynamicRoutingEnrichmentResponse>>? dynamic;
  final pulumi.Input<List<StaticStringRoutingEnrichmentResponse>>? static;

  /// Creates a new [RoutingEnrichmentsResponse].
  /// [dynamic] Optional.
  /// [static] Optional.
  RoutingEnrichmentsResponse({
    this.dynamic,
    this.static,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamic': ?pulumi.Input.mapOptionalInputValue<List<DynamicRoutingEnrichmentResponse>, List<Map<String, dynamic>>>(dynamic, (value) => pulumi.Input.encodeList<DynamicRoutingEnrichmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'static': ?pulumi.Input.mapOptionalInputValue<List<StaticStringRoutingEnrichmentResponse>, List<Map<String, dynamic>>>(static, (value) => pulumi.Input.encodeList<StaticStringRoutingEnrichmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingEnrichmentsResponse.fromMap(Map<String, dynamic> map) {
    return RoutingEnrichmentsResponse(
      dynamic: map['dynamic'] == null ? null : (pulumi.Input.decodeList<DynamicRoutingEnrichmentResponse>(map['dynamic'], (value) => DynamicRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      static: map['static'] == null ? null : (pulumi.Input.decodeList<StaticStringRoutingEnrichmentResponse>(map['static'], (value) => StaticStringRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

