// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_response_compute_beta.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionResponseComputeBeta {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOptionResponseComputeBeta> requestHeadersToAdd;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String> requestHeadersToRemove;

  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOptionResponseComputeBeta> responseHeadersToAdd;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String> responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionResponseComputeBeta].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionResponseComputeBeta({
    required this.requestHeadersToAdd,
    required this.requestHeadersToRemove,
    required this.responseHeadersToAdd,
    required this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdd'] = pulumi.Input.encodeList<
        HttpHeaderOptionResponseComputeBeta,
        Map<String, dynamic>>(requestHeadersToAdd, (value) => value.toMap());
    map['requestHeadersToRemove'] = requestHeadersToRemove;
    map['responseHeadersToAdd'] = pulumi.Input.encodeList<
        HttpHeaderOptionResponseComputeBeta,
        Map<String, dynamic>>(responseHeadersToAdd, (value) => value.toMap());
    map['responseHeadersToRemove'] = responseHeadersToRemove;
    return map;
  }

  factory HttpHeaderActionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return HttpHeaderActionResponseComputeBeta(
      requestHeadersToAdd:
          pulumi.Input.decodeList<HttpHeaderOptionResponseComputeBeta>(
              map['requestHeadersToAdd'],
              (value) => HttpHeaderOptionResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestHeadersToRemove:
          (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd:
          pulumi.Input.decodeList<HttpHeaderOptionResponseComputeBeta>(
              map['responseHeadersToAdd'],
              (value) => HttpHeaderOptionResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseHeadersToRemove:
          (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}
