// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../queue_http_target_header_override/queue_http_target_header_override.dart';
import '../queue_http_target_oauth_token/queue_http_target_oauth_token.dart';
import '../queue_http_target_oidc_token/queue_http_target_oidc_token.dart';
import '../queue_http_target_uri_override/queue_http_target_uri_override.dart';

class QueueHttpTarget {
  /// HTTP target headers.
  /// This map contains the header field names and values.
  /// Headers will be set when running the CreateTask and/or BufferTask.
  /// These headers represent a subset of the headers that will be configured for the task's HTTP request.
  /// Some HTTP request headers will be ignored or replaced.
  /// Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values.
  /// The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  /// Structure is documented below.
  final List<QueueHttpTargetHeaderOverride>? headerOverrides;

  /// The HTTP method to use for the request.
  /// When specified, it overrides HttpRequest for the task.
  /// Note that if the value is set to GET the body of the task will be ignored at execution time.
  /// Possible values are: `HTTP_METHOD_UNSPECIFIED`, `POST`, `GET`, `HEAD`, `PUT`, `DELETE`, `PATCH`, `OPTIONS`.
  final String? httpMethod;

  /// If specified, an OAuth token is generated and attached as the Authorization header in the HTTP request.
  /// This type of authorization should generally be used only when calling Google APIs hosted on *.googleapis.com.
  /// Note that both the service account email and the scope MUST be specified when using the queue-level authorization override.
  /// Structure is documented below.
  final QueueHttpTargetOauthToken? oauthToken;

  /// If specified, an OIDC token is generated and attached as an Authorization header in the HTTP request.
  /// This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// Note that both the service account email and the audience MUST be specified when using the queue-level authorization override.
  /// Structure is documented below.
  final QueueHttpTargetOidcToken? oidcToken;

  /// URI override.
  /// When specified, overrides the execution URI for all the tasks in the queue.
  /// Structure is documented below.
  final QueueHttpTargetUriOverride? uriOverride;

  QueueHttpTarget({
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
      map['headerOverrides'] = pulumi.Input.encodeList<
          QueueHttpTargetHeaderOverride,
          Map<String, dynamic>>(headerOverridesValue, (value) => value.toMap());
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
    final uriOverrideValue = uriOverride;
    if (uriOverrideValue != null) {
      map['uriOverride'] = uriOverrideValue.toMap();
    }
    return map;
  }

  factory QueueHttpTarget.fromMap(Map<String, dynamic> map) {
    return QueueHttpTarget(
      headerOverrides: map['headerOverrides'] == null
          ? null
          : pulumi.Input.decodeList<QueueHttpTargetHeaderOverride>(
              map['headerOverrides'],
              (value) => QueueHttpTargetHeaderOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpMethod:
          map['httpMethod'] == null ? null : map['httpMethod'] as String,
      oauthToken: map['oauthToken'] == null
          ? null
          : QueueHttpTargetOauthToken.fromMap(
              (map['oauthToken'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : QueueHttpTargetOidcToken.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      uriOverride: map['uriOverride'] == null
          ? null
          : QueueHttpTargetUriOverride.fromMap(
              (map['uriOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
