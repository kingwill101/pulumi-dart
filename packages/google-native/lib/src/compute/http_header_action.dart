// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderAction {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOption>? requestHeadersToAdd;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String>? requestHeadersToRemove;

  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOption>? responseHeadersToAdd;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String>? responseHeadersToRemove;

  /// Creates a new [HttpHeaderAction].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderAction({
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
          pulumi.Input.encodeList<HttpHeaderOption, Map<String, dynamic>>(
              requestHeadersToAddValue, (value) => value.toMap());
    }
    final requestHeadersToRemoveValue = requestHeadersToRemove;
    if (requestHeadersToRemoveValue != null) {
      map['requestHeadersToRemove'] = requestHeadersToRemoveValue;
    }
    final responseHeadersToAddValue = responseHeadersToAdd;
    if (responseHeadersToAddValue != null) {
      map['responseHeadersToAdd'] =
          pulumi.Input.encodeList<HttpHeaderOption, Map<String, dynamic>>(
              responseHeadersToAddValue, (value) => value.toMap());
    }
    final responseHeadersToRemoveValue = responseHeadersToRemove;
    if (responseHeadersToRemoveValue != null) {
      map['responseHeadersToRemove'] = responseHeadersToRemoveValue;
    }
    return map;
  }

  factory HttpHeaderAction.fromMap(Map<String, dynamic> map) {
    return HttpHeaderAction(
      requestHeadersToAdd: map['requestHeadersToAdd'] == null
          ? null
          : pulumi.Input.decodeList<HttpHeaderOption>(
              map['requestHeadersToAdd'],
              (value) => HttpHeaderOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: map['requestHeadersToRemove'] == null
          ? null
          : (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: map['responseHeadersToAdd'] == null
          ? null
          : pulumi.Input.decodeList<HttpHeaderOption>(
              map['responseHeadersToAdd'],
              (value) => HttpHeaderOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: map['responseHeadersToRemove'] == null
          ? null
          : (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}
