// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'header_override2.dart';
import 'http_target_http_method4.dart';
import 'oauth_token4.dart';
import 'oidc_token4.dart';
import 'uri_override2.dart';

/// HTTP target. When specified as a Queue, all the tasks with [HttpRequest] will be overridden according to the target.
class HttpTarget4 {
  /// HTTP target headers. This map contains the header field names and values. Headers will be set when running the task is created and/or task is created. These headers represent a subset of the headers that will accompany the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Any header that is prefixed with "X-CloudTasks-" will be treated as service header. Service headers define properties of the task and are predefined in CloudTask. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to `"Google-CloudTasks"`. * `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example, `Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  final List<HeaderOverride2>? headerOverrides;

  /// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  final HttpTargetHttpMethod4? httpMethod;

  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final OAuthToken4? oauthToken;

  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final OidcToken4? oidcToken;

  /// Uri override. When specified, overrides the execution Uri for all the tasks in the queue.
  final UriOverride2? uriOverride;

  HttpTarget4({
    this.headerOverrides,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerOverridesValue = headerOverrides;
    if (headerOverridesValue != null) {
      map['headerOverrides'] =
          Input.encodeList<HeaderOverride2, Map<String, dynamic>>(
              headerOverridesValue, (value) => value.toMap());
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue.value;
    }
    final oauthTokenValue = oauthToken;
    if (oauthTokenValue != null) {
      map['oauthToken'] = oauthTokenValue.toMap();
    }
    final oidcTokenValue = oidcToken;
    if (oidcTokenValue != null) {
      map['oidcToken'] = oidcTokenValue.toMap();
    }
    final uriOverrideValue = uriOverride;
    if (uriOverrideValue != null) {
      map['uriOverride'] = uriOverrideValue.toMap();
    }
    return map;
  }

  factory HttpTarget4.fromMap(Map<String, dynamic> map) {
    return HttpTarget4(
      headerOverrides: map['headerOverrides'] == null
          ? null
          : Input.decodeList<HeaderOverride2>(
              map['headerOverrides'],
              (value) => HeaderOverride2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpMethod: map['httpMethod'] == null
          ? null
          : HttpTargetHttpMethod4.fromValue(map['httpMethod'] as String),
      oauthToken: map['oauthToken'] == null
          ? null
          : OAuthToken4.fromMap(
              (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : OidcToken4.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      uriOverride: map['uriOverride'] == null
          ? null
          : UriOverride2.fromMap(
              (map['uriOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
