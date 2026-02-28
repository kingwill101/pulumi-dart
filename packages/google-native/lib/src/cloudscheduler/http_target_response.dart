// ignore_for_file: unused_element, unnecessary_cast

import 'oauth_token_response.dart';
import 'oidc_token_response.dart';

/// Http target. The job will be pushed to the job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. A failure to receive a response constitutes a failed execution. For a redirected request, the response returned by the redirected request is considered.
class HttpTargetResponse {
  /// HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a job with an incompatible HttpMethod.
  final String body;

  /// HTTP request headers. This map contains the header field names and values. The user can specify HTTP request headers to send with the job's HTTP request. Repeated headers are not supported, but a header value can contain commas. The following headers represent a subset of the headers that accompany the job's HTTP request. Some HTTP request headers are ignored or replaced. A partial list of headers that are ignored or replaced is below: * Host: This will be computed by Cloud Scheduler and derived from uri. * `Content-Length`: This will be computed by Cloud Scheduler. * `User-Agent`: This will be set to `"Google-Cloud-Scheduler"`. * `X-Google-*`: Google internal use only. * `X-AppEngine-*`: Google internal use only. * `X-CloudScheduler`: This header will be set to true. * `X-CloudScheduler-JobName`: This header will contain the job name. * `X-CloudScheduler-ScheduleTime`: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC "Zulu" format. If the job has a body and the following headers are not set by the user, Cloud Scheduler sets default values: * `Content-Type`: This will be set to `"application/octet-stream"`. You can override this default by explicitly setting `Content-Type` to a particular media type when creating the job. For example, you can set `Content-Type` to `"application/json"`. The total size of headers must be less than 80KB.
  final Map<String, String> headers;

  /// Which HTTP method to use for the request.
  final String httpMethod;

  /// If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  final OAuthTokenResponse oauthToken;

  /// If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  final OidcTokenResponse oidcToken;

  /// The full URI path that the request will be sent to. This string must begin with either "http://" or "https://". Some examples of valid values for uri are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Scheduler will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding.
  final String uri;

  /// Creates a new [HttpTargetResponse].
  /// [body] HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a job with an incompatible HttpMethod.
  /// [headers] HTTP request headers. This map contains the header field names and values. The user can specify HTTP request headers to send with the job's HTTP request. Repeated headers are not supported, but a header value can contain commas. The following headers represent a subset of the headers that accompany the job's HTTP request. Some HTTP request headers are ignored or replaced. A partial list of headers that are ignored or replaced is below: * Host: This will be computed by Cloud Scheduler and derived from uri. * `Content-Length`: This will be computed by Cloud Scheduler. * `User-Agent`: This will be set to `"Google-Cloud-Scheduler"`. * `X-Google-*`: Google internal use only. * `X-AppEngine-*`: Google internal use only. * `X-CloudScheduler`: This header will be set to true. * `X-CloudScheduler-JobName`: This header will contain the job name. * `X-CloudScheduler-ScheduleTime`: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC "Zulu" format. If the job has a body and the following headers are not set by the user, Cloud Scheduler sets default values: * `Content-Type`: This will be set to `"application/octet-stream"`. You can override this default by explicitly setting `Content-Type` to a particular media type when creating the job. For example, you can set `Content-Type` to `"application/json"`. The total size of headers must be less than 80KB.
  /// [httpMethod] Which HTTP method to use for the request.
  /// [oauthToken] If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  /// [oidcToken] If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// [uri] The full URI path that the request will be sent to. This string must begin with either "http://" or "https://". Some examples of valid values for uri are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Scheduler will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding.
  HttpTargetResponse({
    required this.body,
    required this.headers,
    required this.httpMethod,
    required this.oauthToken,
    required this.oidcToken,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['body'] = body;
    map['headers'] = headers;
    map['httpMethod'] = httpMethod;
    map['oauthToken'] = oauthToken.toMap();
    map['oidcToken'] = oidcToken.toMap();
    map['uri'] = uri;
    return map;
  }

  factory HttpTargetResponse.fromMap(Map<String, dynamic> map) {
    return HttpTargetResponse(
      body: map['body'] as String,
      headers: (map['headers'] as Map).cast<String, String>(),
      httpMethod: map['httpMethod'] as String,
      oauthToken: OAuthTokenResponse.fromMap(
          (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: OidcTokenResponse.fromMap(
          (map['oidcToken'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}
