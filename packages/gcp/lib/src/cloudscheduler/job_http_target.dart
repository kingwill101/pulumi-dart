// ignore_for_file: unused_element, unnecessary_cast

import 'job_http_target_oauth_token.dart';
import 'job_http_target_oidc_token.dart';

class JobHttpTarget {
  /// HTTP request body.
  /// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
  /// It is an error to set body on a job with an incompatible HttpMethod.
  /// A base64-encoded string.
  final String? body;

  /// This map contains the header field names and values.
  /// Repeated headers are not supported, but a header value can contain commas.
  final Map<String, String>? headers;

  /// Which HTTP method to use for the request.
  final String? httpMethod;

  /// Contains information needed for generating an OAuth token.
  /// This type of authorization should be used when sending requests to a GCP endpoint.
  /// Structure is documented below.
  final JobHttpTargetOauthToken? oauthToken;

  /// Contains information needed for generating an OpenID Connect token.
  /// This type of authorization should be used when sending requests to third party endpoints or Cloud Run.
  /// Structure is documented below.
  final JobHttpTargetOidcToken? oidcToken;

  /// The full URI path that the request will be sent to.
  final String uri;

  /// Creates a new [JobHttpTarget].
  /// [body] HTTP request body.
  /// [headers] This map contains the header field names and values.
  /// [httpMethod] Which HTTP method to use for the request.
  /// [oauthToken] Contains information needed for generating an OAuth token.
  /// [oidcToken] Contains information needed for generating an OpenID Connect token.
  /// [uri] The full URI path that the request will be sent to.
  JobHttpTarget({
    this.body,
    this.headers,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue;
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue;
    }
    final oauthTokenValue = oauthToken;
    if (oauthTokenValue != null) {
      map['oauthToken'] = oauthTokenValue.toMap();
    }
    final oidcTokenValue = oidcToken;
    if (oidcTokenValue != null) {
      map['oidcToken'] = oidcTokenValue.toMap();
    }
    map['uri'] = uri;
    return map;
  }

  factory JobHttpTarget.fromMap(Map<String, dynamic> map) {
    return JobHttpTarget(
      body: map['body'] == null ? null : map['body'] as String,
      headers: map['headers'] == null
          ? null
          : (map['headers'] as Map).cast<String, String>(),
      httpMethod:
          map['httpMethod'] == null ? null : map['httpMethod'] as String,
      oauthToken: map['oauthToken'] == null
          ? null
          : JobHttpTargetOauthToken.fromMap(
              (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : JobHttpTargetOidcToken.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}
