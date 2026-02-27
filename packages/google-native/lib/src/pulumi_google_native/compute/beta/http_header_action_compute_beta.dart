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

  HttpHeaderActionComputeBeta({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddValue = requestHeadersToAdd;
    if (requestHeadersToAddValue != null) {
      map['requestHeadersToAdd'] = pulumi.Input.encodeList<
              HttpHeaderOptionComputeBeta, Map<String, dynamic>>(
          requestHeadersToAddValue, (value) => value.toMap());
    }
    final requestHeadersToRemoveValue = requestHeadersToRemove;
    if (requestHeadersToRemoveValue != null) {
      map['requestHeadersToRemove'] = requestHeadersToRemoveValue;
    }
    final responseHeadersToAddValue = responseHeadersToAdd;
    if (responseHeadersToAddValue != null) {
      map['responseHeadersToAdd'] = pulumi.Input.encodeList<
              HttpHeaderOptionComputeBeta, Map<String, dynamic>>(
          responseHeadersToAddValue, (value) => value.toMap());
    }
    final responseHeadersToRemoveValue = responseHeadersToRemove;
    if (responseHeadersToRemoveValue != null) {
      map['responseHeadersToRemove'] = responseHeadersToRemoveValue;
    }
    return map;
  }

  factory HttpHeaderActionComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionComputeBeta(
      requestHeadersToAdd: map['requestHeadersToAdd'] == null
          ? null
          : pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(
              map['requestHeadersToAdd'],
              (value) => HttpHeaderOptionComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: map['requestHeadersToRemove'] == null
          ? null
          : (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: map['responseHeadersToAdd'] == null
          ? null
          : pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(
              map['responseHeadersToAdd'],
              (value) => HttpHeaderOptionComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: map['responseHeadersToRemove'] == null
          ? null
          : (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}
