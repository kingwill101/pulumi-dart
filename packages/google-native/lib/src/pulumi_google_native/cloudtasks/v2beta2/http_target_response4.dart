// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'header_override_response2.dart';
import 'oauth_token_response4.dart';
import 'oidc_token_response4.dart';
import 'uri_override_response2.dart';

/// HTTP target. When specified as a Queue, all the tasks with [HttpRequest] will be overridden according to the target.
class HttpTargetResponse4 {
  /// HTTP target headers. This map contains the header field names and values. Headers will be set when running the task is created and/or task is created. These headers represent a subset of the headers that will accompany the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Any header that is prefixed with "X-CloudTasks-" will be treated as service header. Service headers define properties of the task and are predefined in CloudTask. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to `"Google-CloudTasks"`. * `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example, `Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  final List<HeaderOverrideResponse2> headerOverrides;

  /// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  final String httpMethod;

  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final OAuthTokenResponse4 oauthToken;

  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final OidcTokenResponse4 oidcToken;

  /// Uri override. When specified, overrides the execution Uri for all the tasks in the queue.
  final UriOverrideResponse2 uriOverride;

  HttpTargetResponse4({
    required this.headerOverrides,
    required this.httpMethod,
    required this.oauthToken,
    required this.oidcToken,
    required this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerOverrides'] =
        Input.encodeList<HeaderOverrideResponse2, Map<String, dynamic>>(
            headerOverrides, (value) => value.toMap());
    map['httpMethod'] = httpMethod;
    map['oauthToken'] = oauthToken.toMap();
    map['oidcToken'] = oidcToken.toMap();
    map['uriOverride'] = uriOverride.toMap();
    return map;
  }

  factory HttpTargetResponse4.fromMap(Map<String, dynamic> map) {
    return HttpTargetResponse4(
      headerOverrides: Input.decodeList<HeaderOverrideResponse2>(
          map['headerOverrides'],
          (value) => HeaderOverrideResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpMethod: map['httpMethod'] as String,
      oauthToken: OAuthTokenResponse4.fromMap(
          (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: OidcTokenResponse4.fromMap(
          (map['oidcToken'] as Map).cast<String, dynamic>()),
      uriOverride: UriOverrideResponse2.fromMap(
          (map['uriOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
