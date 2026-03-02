// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_routing_enrichment.dart';
import 'static_string_routing_enrichment.dart';

class RoutingEnrichments {
  final pulumi.Input<List<DynamicRoutingEnrichment>>? dynamic;
  final pulumi.Input<List<StaticStringRoutingEnrichment>>? static;

  /// Creates a new [RoutingEnrichments].
  /// [dynamic] Optional.
  /// [static] Optional.
  RoutingEnrichments({
    this.dynamic,
    this.static,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamic': ?pulumi.Input.mapOptionalInputValue<List<DynamicRoutingEnrichment>, List<Map<String, dynamic>>>(dynamic, (value) => pulumi.Input.encodeList<DynamicRoutingEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'static': ?pulumi.Input.mapOptionalInputValue<List<StaticStringRoutingEnrichment>, List<Map<String, dynamic>>>(static, (value) => pulumi.Input.encodeList<StaticStringRoutingEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingEnrichments.fromMap(Map<String, dynamic> map) {
    return RoutingEnrichments(
      dynamic: map['dynamic'] == null ? null : (pulumi.Input.decodeList<DynamicRoutingEnrichment>(map['dynamic'], (value) => DynamicRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      static: map['static'] == null ? null : (pulumi.Input.decodeList<StaticStringRoutingEnrichment>(map['static'], (value) => StaticStringRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

