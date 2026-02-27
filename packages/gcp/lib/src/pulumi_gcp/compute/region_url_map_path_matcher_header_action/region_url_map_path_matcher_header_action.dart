// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_url_map_path_matcher_header_action_request_headers_to_add/region_url_map_path_matcher_header_action_request_headers_to_add.dart';
import '../region_url_map_path_matcher_header_action_response_headers_to_add/region_url_map_path_matcher_header_action_response_headers_to_add.dart';

class RegionUrlMapPathMatcherHeaderAction {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd>?
      requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;

  /// Headers to add the response before sending the response back to the client.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd>?
      responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String>? responseHeadersToRemoves;

  RegionUrlMapPathMatcherHeaderAction({
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
              RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    final requestHeadersToRemovesValue = requestHeadersToRemoves;
    if (requestHeadersToRemovesValue != null) {
      map['requestHeadersToRemoves'] = requestHeadersToRemovesValue;
    }
    final responseHeadersToAddsValue = responseHeadersToAdds;
    if (responseHeadersToAddsValue != null) {
      map['responseHeadersToAdds'] = pulumi.Input.encodeList<
              RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd,
              Map<String, dynamic>>(
          responseHeadersToAddsValue, (value) => value.toMap());
    }
    final responseHeadersToRemovesValue = responseHeadersToRemoves;
    if (responseHeadersToRemovesValue != null) {
      map['responseHeadersToRemoves'] = responseHeadersToRemovesValue;
    }
    return map;
  }

  factory RegionUrlMapPathMatcherHeaderAction.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd>(
              map['requestHeadersToAdds'],
              (value) => RegionUrlMapPathMatcherHeaderActionRequestHeadersToAdd
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null
          ? null
          : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd>(
              map['responseHeadersToAdds'],
              (value) => RegionUrlMapPathMatcherHeaderActionResponseHeadersToAdd
                  .fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null
          ? null
          : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}
