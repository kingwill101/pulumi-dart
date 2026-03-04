// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupUserLogConfig {
  /// The jwt claims to be record, support multi jwt claims split by `,`. Set `*` to record all.
  final pulumi.Input<String>? jwtClaims;

  /// The query params to be record, support multi query params split by `,`. Set `*` to record all.
  final pulumi.Input<String>? queryString;

  /// Whether to record the request body.
  final pulumi.Input<bool>? requestBody;

  /// The request headers to be record, support multi request headers split by `,`. Set `*` to record all.
  final pulumi.Input<String>? requestHeaders;

  /// Whether to record the response body.
  final pulumi.Input<bool>? responseBody;

  /// The response headers to be record, support multi response headers split by `,`. Set `*` to record all.
  final pulumi.Input<String>? responseHeaders;

  /// Creates a new [GroupUserLogConfig].
  /// [jwtClaims] The jwt claims to be record, support multi jwt claims split by `,`. Set `*` to record all.
  /// [queryString] The query params to be record, support multi query params split by `,`. Set `*` to record all.
  /// [requestBody] Whether to record the request body.
  /// [requestHeaders] The request headers to be record, support multi request headers split by `,`. Set `*` to record all.
  /// [responseBody] Whether to record the response body.
  /// [responseHeaders] The response headers to be record, support multi response headers split by `,`. Set `*` to record all.
  GroupUserLogConfig({
    this.jwtClaims,
    this.queryString,
    this.requestBody,
    this.requestHeaders,
    this.responseBody,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwtClaims': ?jwtClaims,
      'queryString': ?queryString,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'responseBody': ?responseBody,
      'responseHeaders': ?responseHeaders,
    };
  }

  factory GroupUserLogConfig.fromMap(Map<String, dynamic> map) {
    return GroupUserLogConfig(
      jwtClaims: (() {
        final guardedValue = map['jwtClaims'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryString: (() {
        final guardedValue = map['queryString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestBody: (() {
        final guardedValue = map['requestBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requestHeaders: (() {
        final guardedValue = map['requestHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      responseBody: (() {
        final guardedValue = map['responseBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      responseHeaders: (() {
        final guardedValue = map['responseHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
