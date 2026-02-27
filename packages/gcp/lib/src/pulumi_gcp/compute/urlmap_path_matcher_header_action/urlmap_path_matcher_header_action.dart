// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../urlmap_path_matcher_header_action_request_headers_to_add/urlmap_path_matcher_header_action_request_headers_to_add.dart';
import '../urlmap_path_matcher_header_action_response_headers_to_add/urlmap_path_matcher_header_action_response_headers_to_add.dart';

class URLMapPathMatcherHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final List<URLMapPathMatcherHeaderActionRequestHeadersToAdd>?
      requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;

  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final List<URLMapPathMatcherHeaderActionResponseHeadersToAdd>?
      responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final List<String>? responseHeadersToRemoves;

  URLMapPathMatcherHeaderAction({
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
              URLMapPathMatcherHeaderActionRequestHeadersToAdd,
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
              URLMapPathMatcherHeaderActionResponseHeadersToAdd,
              Map<String, dynamic>>(
          responseHeadersToAddsValue, (value) => value.toMap());
    }
    final responseHeadersToRemovesValue = responseHeadersToRemoves;
    if (responseHeadersToRemovesValue != null) {
      map['responseHeadersToRemoves'] = responseHeadersToRemovesValue;
    }
    return map;
  }

  factory URLMapPathMatcherHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  URLMapPathMatcherHeaderActionRequestHeadersToAdd>(
              map['requestHeadersToAdds'],
              (value) =>
                  URLMapPathMatcherHeaderActionRequestHeadersToAdd.fromMap(
                      (value as Map).cast<String, dynamic>())),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null
          ? null
          : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  URLMapPathMatcherHeaderActionResponseHeadersToAdd>(
              map['responseHeadersToAdds'],
              (value) =>
                  URLMapPathMatcherHeaderActionResponseHeadersToAdd.fromMap(
                      (value as Map).cast<String, dynamic>())),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null
          ? null
          : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}
