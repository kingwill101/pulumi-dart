// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_header_option_response.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionResponse {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOptionResponse> requestHeadersToAdd;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String> requestHeadersToRemove;

  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOptionResponse> responseHeadersToAdd;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String> responseHeadersToRemove;

  HttpHeaderActionResponse({
    required this.requestHeadersToAdd,
    required this.requestHeadersToRemove,
    required this.responseHeadersToAdd,
    required this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdd'] =
        Input.encodeList<HttpHeaderOptionResponse, Map<String, dynamic>>(
            requestHeadersToAdd, (value) => value.toMap());
    map['requestHeadersToRemove'] = requestHeadersToRemove;
    map['responseHeadersToAdd'] =
        Input.encodeList<HttpHeaderOptionResponse, Map<String, dynamic>>(
            responseHeadersToAdd, (value) => value.toMap());
    map['responseHeadersToRemove'] = responseHeadersToRemove;
    return map;
  }

  factory HttpHeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionResponse(
      requestHeadersToAdd: Input.decodeList<HttpHeaderOptionResponse>(
          map['requestHeadersToAdd'],
          (value) => HttpHeaderOptionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      requestHeadersToRemove:
          (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: Input.decodeList<HttpHeaderOptionResponse>(
          map['responseHeadersToAdd'],
          (value) => HttpHeaderOptionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseHeadersToRemove:
          (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}
