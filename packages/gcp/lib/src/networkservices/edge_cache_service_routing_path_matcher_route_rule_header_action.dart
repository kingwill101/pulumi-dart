// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_request_header_to_add.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_request_header_to_remove.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_response_header_to_add.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_response_header_to_remove.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction {
  /// Describes a header to add.
  /// Structure is documented below.
  final List<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd>?
      requestHeaderToAdds;

  /// A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// Structure is documented below.
  final List<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove>?
      requestHeaderToRemoves;

  /// Headers to add to the response prior to sending it back to the client.
  /// Response headers are only sent to the client, and do not have an effect on the cache serving the response.
  /// Structure is documented below.
  final List<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd>?
      responseHeaderToAdds;

  /// A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// Structure is documented below.
  final List<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove>?
      responseHeaderToRemoves;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction].
  /// [requestHeaderToAdds] Describes a header to add.
  /// [requestHeaderToRemoves] A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// [responseHeaderToAdds] Headers to add to the response prior to sending it back to the client.
  /// [responseHeaderToRemoves] A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction({
    this.requestHeaderToAdds,
    this.requestHeaderToRemoves,
    this.responseHeaderToAdds,
    this.responseHeaderToRemoves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeaderToAddsValue = requestHeaderToAdds;
    if (requestHeaderToAddsValue != null) {
      map['requestHeaderToAdds'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd,
          Map<String,
              dynamic>>(requestHeaderToAddsValue, (value) => value.toMap());
    }
    final requestHeaderToRemovesValue = requestHeaderToRemoves;
    if (requestHeaderToRemovesValue != null) {
      map['requestHeaderToRemoves'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove,
          Map<String,
              dynamic>>(requestHeaderToRemovesValue, (value) => value.toMap());
    }
    final responseHeaderToAddsValue = responseHeaderToAdds;
    if (responseHeaderToAddsValue != null) {
      map['responseHeaderToAdds'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd,
          Map<String,
              dynamic>>(responseHeaderToAddsValue, (value) => value.toMap());
    }
    final responseHeaderToRemovesValue = responseHeaderToRemoves;
    if (responseHeaderToRemovesValue != null) {
      map['responseHeaderToRemoves'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove,
          Map<String,
              dynamic>>(responseHeaderToRemovesValue, (value) => value.toMap());
    }
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction(
      requestHeaderToAdds: map['requestHeaderToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd>(
              map['requestHeaderToAdds'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestHeaderToRemoves: map['requestHeaderToRemoves'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove>(
              map['requestHeaderToRemoves'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove
                      .fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderToAdds: map['responseHeaderToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd>(
              map['responseHeaderToAdds'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd
                      .fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderToRemoves: map['responseHeaderToRemoves'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove>(
              map['responseHeaderToRemoves'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
