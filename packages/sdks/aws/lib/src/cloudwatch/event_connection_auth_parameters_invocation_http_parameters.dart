// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_invocation_http_parameters_body.dart';
import 'event_connection_auth_parameters_invocation_http_parameters_header.dart';
import 'event_connection_auth_parameters_invocation_http_parameters_query_string.dart';

class EventConnectionAuthParametersInvocationHttpParameters {
  /// Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersInvocationHttpParametersBody>>? bodies;
  /// Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersInvocationHttpParametersHeader>>? headers;
  /// Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final pulumi.Input<List<EventConnectionAuthParametersInvocationHttpParametersQueryString>>? queryStrings;

  /// Creates a new [EventConnectionAuthParametersInvocationHttpParameters].
  /// [bodies] Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  /// [headers] Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  /// [queryStrings] Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  EventConnectionAuthParametersInvocationHttpParameters({
    this.bodies,
    this.headers,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodies': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersInvocationHttpParametersBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersInvocationHttpParametersBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersInvocationHttpParametersHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersInvocationHttpParametersHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<List<EventConnectionAuthParametersInvocationHttpParametersQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<EventConnectionAuthParametersInvocationHttpParametersQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventConnectionAuthParametersInvocationHttpParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersInvocationHttpParameters(
      bodies: (() { final guardedValue = map['bodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersInvocationHttpParametersBody>(guardedValue, (value) => EventConnectionAuthParametersInvocationHttpParametersBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersInvocationHttpParametersHeader>(guardedValue, (value) => EventConnectionAuthParametersInvocationHttpParametersHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventConnectionAuthParametersInvocationHttpParametersQueryString>(guardedValue, (value) => EventConnectionAuthParametersInvocationHttpParametersQueryString.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

