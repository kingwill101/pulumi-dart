// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_header_option3.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderAction3 {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOption3>? requestHeadersToAdd;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String>? requestHeadersToRemove;

  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOption3>? responseHeadersToAdd;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String>? responseHeadersToRemove;

  HttpHeaderAction3({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddValue = requestHeadersToAdd;
    if (requestHeadersToAddValue != null) {
      map['requestHeadersToAdd'] =
          Input.encodeList<HttpHeaderOption3, Map<String, dynamic>>(
              requestHeadersToAddValue, (value) => value.toMap());
    }
    final requestHeadersToRemoveValue = requestHeadersToRemove;
    if (requestHeadersToRemoveValue != null) {
      map['requestHeadersToRemove'] = requestHeadersToRemoveValue;
    }
    final responseHeadersToAddValue = responseHeadersToAdd;
    if (responseHeadersToAddValue != null) {
      map['responseHeadersToAdd'] =
          Input.encodeList<HttpHeaderOption3, Map<String, dynamic>>(
              responseHeadersToAddValue, (value) => value.toMap());
    }
    final responseHeadersToRemoveValue = responseHeadersToRemove;
    if (responseHeadersToRemoveValue != null) {
      map['responseHeadersToRemove'] = responseHeadersToRemoveValue;
    }
    return map;
  }

  factory HttpHeaderAction3.fromMap(Map<String, dynamic> map) {
    return HttpHeaderAction3(
      requestHeadersToAdd: map['requestHeadersToAdd'] == null
          ? null
          : Input.decodeList<HttpHeaderOption3>(
              map['requestHeadersToAdd'],
              (value) => HttpHeaderOption3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: map['requestHeadersToRemove'] == null
          ? null
          : (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: map['responseHeadersToAdd'] == null
          ? null
          : Input.decodeList<HttpHeaderOption3>(
              map['responseHeadersToAdd'],
              (value) => HttpHeaderOption3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: map['responseHeadersToRemove'] == null
          ? null
          : (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}
