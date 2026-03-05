// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_body.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_header.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters_query_string.dart';

class EventConnectionAuthParametersOauthOauthHttpParameters {
  /// Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersOauthOauthHttpParametersBody>>? bodies;
  /// Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersOauthOauthHttpParametersHeader>>? headers;
  /// Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersOauthOauthHttpParametersQueryString>>? queryStrings;

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
    return <String, dynamic>{
      'bodies': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersOauthOauthHttpParametersBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersOauthOauthHttpParametersBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersOauthOauthHttpParametersHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersOauthOauthHttpParametersHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersOauthOauthHttpParametersQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersOauthOauthHttpParametersQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventConnectionAuthParametersOauthOauthHttpParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthOauthHttpParameters(
      bodies: (() { final guardedValue = map['bodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersOauthOauthHttpParametersBody>(guardedValue, (value) => EventConnectionAuthParametersOauthOauthHttpParametersBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersOauthOauthHttpParametersHeader>(guardedValue, (value) => EventConnectionAuthParametersOauthOauthHttpParametersHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersOauthOauthHttpParametersQueryString>(guardedValue, (value) => EventConnectionAuthParametersOauthOauthHttpParametersQueryString.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

