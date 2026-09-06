// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_routing_enrichment_response.dart';
import 'static_string_routing_enrichment_response.dart';

class RoutingEnrichmentsResponse {
  final pulumi.Input<List<DynamicRoutingEnrichmentResponse>?>? dynamic_;
  final pulumi.Input<List<StaticStringRoutingEnrichmentResponse>?>? static;

  /// Creates a new [RoutingEnrichmentsResponse].
  /// [dynamic_] Optional.
  /// [static] Optional.
  const RoutingEnrichmentsResponse({
    this.dynamic_,
    this.static,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamic': ?pulumi.Input.mapOptionalInputValue<List<DynamicRoutingEnrichmentResponse>, List<Map<String, dynamic>>>(dynamic_, (value) => pulumi.Input.encodeList<DynamicRoutingEnrichmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'static': ?pulumi.Input.mapOptionalInputValue<List<StaticStringRoutingEnrichmentResponse>, List<Map<String, dynamic>>>(static, (value) => pulumi.Input.encodeList<StaticStringRoutingEnrichmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingEnrichmentsResponse.fromMap(Map<String, dynamic> map) {
    return RoutingEnrichmentsResponse(
      dynamic_: (() { final guardedValue = map['dynamic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicRoutingEnrichmentResponse>(guardedValue, (value) => DynamicRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      static: (() { final guardedValue = map['static']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticStringRoutingEnrichmentResponse>(guardedValue, (value) => StaticStringRoutingEnrichmentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
