// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../urlmap_default_route_action_weighted_backend_service_header_action_request_headers_to_add/urlmap_default_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import '../urlmap_default_route_action_weighted_backend_service_header_action_response_headers_to_add/urlmap_default_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class URLMapDefaultRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final List<
          URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>?
      requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;

  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final List<
          URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>?
      responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final List<String>? responseHeadersToRemoves;

  URLMapDefaultRouteActionWeightedBackendServiceHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = pulumi.Input.encodeList<
          URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd,
          Map<String,
              dynamic>>(requestHeadersToAddsValue, (value) => value.toMap());
    }
    final requestHeadersToRemovesValue = requestHeadersToRemoves;
    if (requestHeadersToRemovesValue != null) {
      map['requestHeadersToRemoves'] = requestHeadersToRemovesValue;
    }
    final responseHeadersToAddsValue = responseHeadersToAdds;
    if (responseHeadersToAddsValue != null) {
      map['responseHeadersToAdds'] = pulumi.Input.encodeList<
          URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd,
          Map<String,
              dynamic>>(responseHeadersToAddsValue, (value) => value.toMap());
    }
    final responseHeadersToRemovesValue = responseHeadersToRemoves;
    if (responseHeadersToRemovesValue != null) {
      map['responseHeadersToRemoves'] = responseHeadersToRemovesValue;
    }
    return map;
  }

  factory URLMapDefaultRouteActionWeightedBackendServiceHeaderAction.fromMap(
      Map<String, dynamic> map) {
    return URLMapDefaultRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>(
              map['requestHeadersToAdds'],
              (value) =>
                  URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null
          ? null
          : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>(
              map['responseHeadersToAdds'],
              (value) =>
                  URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
                      .fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null
          ? null
          : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}
