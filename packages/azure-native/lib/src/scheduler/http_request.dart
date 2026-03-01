// ignore_for_file: unused_element, unnecessary_cast

import 'basic_authentication.dart';

class HttpRequest {
  /// Gets or sets the authentication method of the request.
  final BasicAuthentication? authentication;
  /// Gets or sets the request body.
  final String? body;
  /// Gets or sets the headers.
  final Map<String, String>? headers;
  /// Gets or sets the method of the request.
  final String? method;
  /// Gets or sets the URI of the request.
  final String? uri;

  /// Creates a new [HttpRequest].
  /// [authentication] Gets or sets the authentication method of the request.
  /// [body] Gets or sets the request body.
  /// [headers] Gets or sets the headers.
  /// [method] Gets or sets the method of the request.
  /// [uri] Gets or sets the URI of the request.
  HttpRequest({
    this.authentication,
    this.body,
    this.headers,
    this.method,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'body': ?body,
      'headers': ?headers,
      'method': ?method,
      'uri': ?uri,
    };
  }

  factory HttpRequest.fromMap(Map<String, dynamic> map) {
    return HttpRequest(
      authentication: map['authentication'] == null ? null : BasicAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      method: map['method'] == null ? null : map['method'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

