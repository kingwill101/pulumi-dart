// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_routing_enrichment.dart';
import 'static_string_routing_enrichment.dart';

class RoutingEnrichments {
  final pulumi.Input<List<DynamicRoutingEnrichment>>? dynamic_;
  final pulumi.Input<List<StaticStringRoutingEnrichment>>? static;

  /// Creates a new [RoutingEnrichments].
  /// [dynamic_] Optional.
  /// [static] Optional.
  RoutingEnrichments({this.dynamic_, this.static});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamic':
          ?pulumi.Input.mapOptionalInputValue<
            List<DynamicRoutingEnrichment>,
            List<Map<String, dynamic>>
          >(
            dynamic_,
            (value) =>
                pulumi.Input.encodeList<
                  DynamicRoutingEnrichment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'static':
          ?pulumi.Input.mapOptionalInputValue<
            List<StaticStringRoutingEnrichment>,
            List<Map<String, dynamic>>
          >(
            static,
            (value) =>
                pulumi.Input.encodeList<
                  StaticStringRoutingEnrichment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RoutingEnrichments.fromMap(Map<String, dynamic> map) {
    return RoutingEnrichments(
      dynamic_: (() {
        final guardedValue = map['dynamic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DynamicRoutingEnrichment>(
            guardedValue,
            (value) => DynamicRoutingEnrichment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      static: (() {
        final guardedValue = map['static'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StaticStringRoutingEnrichment>(
            guardedValue,
            (value) => StaticStringRoutingEnrichment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
