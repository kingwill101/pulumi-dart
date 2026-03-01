// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_default_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import 'urlmap_path_matcher_default_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final List<
    URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;

  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final List<
    URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
  >?
  responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final List<String>? responseHeadersToRemoves;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request prior to forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request prior to
  /// [responseHeadersToAdds] Headers to add the response prior to sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response prior to sending the
  URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?requestHeadersToAdds == null
          ? null
          : pulumi.Input.encodeList<
              URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd,
              Map<String, dynamic>
            >(requestHeadersToAdds!, (value) => value.toMap()),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?responseHeadersToAdds == null
          ? null
          : pulumi.Input.encodeList<
              URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd,
              Map<String, dynamic>
            >(responseHeadersToAdds!, (value) => value.toMap()),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
              URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
            >(
              map['requestHeadersToAdds'],
              (value) =>
                  URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null
          ? null
          : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
              URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
            >(
              map['responseHeadersToAdds'],
              (value) =>
                  URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null
          ? null
          : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}
