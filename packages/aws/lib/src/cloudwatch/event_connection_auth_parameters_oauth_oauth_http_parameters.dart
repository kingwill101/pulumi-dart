// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_body.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_header.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_query_string.dart';

class EventConnectionAuthParametersOauthOauthHttpParameters {
  /// Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersOauthOauthHttpParametersBody>? bodies;

  /// Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersOauthOauthHttpParametersHeader>?
      headers;

  /// Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersOauthOauthHttpParametersQueryString>?
      queryStrings;

  /// Creates a new [EventConnectionAuthParametersOauthOauthHttpParameters].
  /// [bodies] Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  /// [headers] Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  /// [queryStrings] Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  EventConnectionAuthParametersOauthOauthHttpParameters({
    this.bodies,
    this.headers,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bodiesValue = bodies;
    if (bodiesValue != null) {
      map['bodies'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersOauthOauthHttpParametersBody,
          Map<String, dynamic>>(bodiesValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersOauthOauthHttpParametersHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersOauthOauthHttpParametersQueryString,
          Map<String, dynamic>>(queryStringsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventConnectionAuthParametersOauthOauthHttpParameters.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthOauthHttpParameters(
      bodies: map['bodies'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersOauthOauthHttpParametersBody>(
              map['bodies'],
              (value) =>
                  EventConnectionAuthParametersOauthOauthHttpParametersBody
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersOauthOauthHttpParametersHeader>(
              map['headers'],
              (value) =>
                  EventConnectionAuthParametersOauthOauthHttpParametersHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      queryStrings: map['queryStrings'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersOauthOauthHttpParametersQueryString>(
              map['queryStrings'],
              (value) =>
                  EventConnectionAuthParametersOauthOauthHttpParametersQueryString
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
