// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_header_action_request_headers_to_add.dart';
import 'urlmap_path_matcher_header_action_response_headers_to_add.dart';

class URLMapPathMatcherHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final List<URLMapPathMatcherHeaderActionRequestHeadersToAdd>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;
  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final List<URLMapPathMatcherHeaderActionResponseHeadersToAdd>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final List<String>? responseHeadersToRemoves;

  /// Creates a new [URLMapPathMatcherHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request prior to forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request prior to
  /// [responseHeadersToAdds] Headers to add the response prior to sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response prior to sending the
  URLMapPathMatcherHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?requestHeadersToAdds == null ? null : pulumi.Input.encodeList<URLMapPathMatcherHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(requestHeadersToAdds!, (value) => value.toMap()),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?responseHeadersToAdds == null ? null : pulumi.Input.encodeList<URLMapPathMatcherHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(responseHeadersToAdds!, (value) => value.toMap()),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapPathMatcherHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherHeaderActionRequestHeadersToAdd>(map['requestHeadersToAdds'], (value) => URLMapPathMatcherHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null ? null : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherHeaderActionResponseHeadersToAdd>(map['responseHeadersToAdds'], (value) => URLMapPathMatcherHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null ? null : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}

