// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_override_response.dart';
import 'oauth_token_response.dart';
import 'oidc_token_response.dart';
import 'uri_override_response.dart';

/// HTTP target. When specified as a Queue, all the tasks with [HttpRequest] will be overridden according to the target.
class HttpTargetResponse {
  /// HTTP target headers. This map contains the header field names and values. Headers will be set when running the CreateTask and/or BufferTask. These headers represent a subset of the headers that will be configured for the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Several predefined headers, prefixed with "X-CloudTasks-", can be used to define properties of the task. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example,`Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. The default value is set to "application/json"`. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  final List<HeaderOverrideResponse> headerOverrides;

  /// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  final String httpMethod;

  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as the `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final OAuthTokenResponse oauthToken;

  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final OidcTokenResponse oidcToken;

  /// URI override. When specified, overrides the execution URI for all the tasks in the queue.
  final UriOverrideResponse uriOverride;

  /// Creates a new [HttpTargetResponse].
  /// [headerOverrides] HTTP target headers. This map contains the header field names and values. Headers will be set when running the CreateTask and/or BufferTask. These headers represent a subset of the headers that will be configured for the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Several predefined headers, prefixed with "X-CloudTasks-", can be used to define properties of the task. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example,`Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. The default value is set to "application/json"`. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  /// [httpMethod] The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
  /// [oauthToken] If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as the `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  /// [oidcToken] If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// [uriOverride] URI override. When specified, overrides the execution URI for all the tasks in the queue.
  HttpTargetResponse({
    required this.headerOverrides,
    required this.httpMethod,
    required this.oauthToken,
    required this.oidcToken,
    required this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerOverrides'] =
        pulumi.Input.encodeList<HeaderOverrideResponse, Map<String, dynamic>>(
            headerOverrides, (value) => value.toMap());
    map['httpMethod'] = httpMethod;
    map['oauthToken'] = oauthToken.toMap();
    map['oidcToken'] = oidcToken.toMap();
    map['uriOverride'] = uriOverride.toMap();
    return map;
  }

  factory HttpTargetResponse.fromMap(Map<String, dynamic> map) {
    return HttpTargetResponse(
      headerOverrides: pulumi.Input.decodeList<HeaderOverrideResponse>(
          map['headerOverrides'],
          (value) => HeaderOverrideResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpMethod: map['httpMethod'] as String,
      oauthToken: OAuthTokenResponse.fromMap(
          (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: OidcTokenResponse.fromMap(
          (map['oidcToken'] as Map).cast<String, dynamic>()),
      uriOverride: UriOverrideResponse.fromMap(
          (map['uriOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
