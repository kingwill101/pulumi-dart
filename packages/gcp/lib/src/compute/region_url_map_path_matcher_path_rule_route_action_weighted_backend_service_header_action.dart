// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_path_rule_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import 'region_url_map_path_matcher_path_rule_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  /// Structure is documented below.
  final List<
    RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;

  /// Headers to add the response before sending the response back to the client.
  /// Structure is documented below.
  final List<
    RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
  >?
  responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String>? responseHeadersToRemoves;

  /// Creates a new [RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdds] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction({
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
              RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd,
              Map<String, dynamic>
            >(requestHeadersToAdds!, (value) => value.toMap()),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?responseHeadersToAdds == null
          ? null
          : pulumi.Input.encodeList<
              RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd,
              Map<String, dynamic>
            >(responseHeadersToAdds!, (value) => value.toMap()),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
            >(
              map['requestHeadersToAdds'],
              (value) =>
                  RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null
          ? null
          : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
            >(
              map['responseHeadersToAdds'],
              (value) =>
                  RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null
          ? null
          : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}
