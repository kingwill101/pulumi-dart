// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_compute_beta.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionComputeBeta {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOptionComputeBeta>? requestHeadersToAdd;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String>? requestHeadersToRemove;
  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOptionComputeBeta>? responseHeadersToAdd;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String>? responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionComputeBeta].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionComputeBeta({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd': ?requestHeadersToAdd == null ? null : pulumi.Input.encodeList<HttpHeaderOptionComputeBeta, Map<String, dynamic>>(requestHeadersToAdd!, (value) => value.toMap()),
      'requestHeadersToRemove': ?requestHeadersToRemove,
      'responseHeadersToAdd': ?responseHeadersToAdd == null ? null : pulumi.Input.encodeList<HttpHeaderOptionComputeBeta, Map<String, dynamic>>(responseHeadersToAdd!, (value) => value.toMap()),
      'responseHeadersToRemove': ?responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionComputeBeta(
      requestHeadersToAdd: map['requestHeadersToAdd'] == null ? null : pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(map['requestHeadersToAdd'], (value) => HttpHeaderOptionComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: map['requestHeadersToRemove'] == null ? null : (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: map['responseHeadersToAdd'] == null ? null : pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(map['responseHeadersToAdd'], (value) => HttpHeaderOptionComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: map['responseHeadersToRemove'] == null ? null : (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}

