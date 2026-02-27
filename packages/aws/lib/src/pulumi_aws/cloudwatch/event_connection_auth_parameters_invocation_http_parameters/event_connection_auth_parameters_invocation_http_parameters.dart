// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_connection_auth_parameters_invocation_http_parameters_body/event_connection_auth_parameters_invocation_http_parameters_body.dart';
import '../event_connection_auth_parameters_invocation_http_parameters_header/event_connection_auth_parameters_invocation_http_parameters_header.dart';
import '../event_connection_auth_parameters_invocation_http_parameters_query_string/event_connection_auth_parameters_invocation_http_parameters_query_string.dart';

class EventConnectionAuthParametersInvocationHttpParameters {
  /// Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersBody>? bodies;

  /// Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersHeader>?
      headers;

  /// Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersQueryString>?
      queryStrings;

  EventConnectionAuthParametersInvocationHttpParameters({
    this.bodies,
    this.headers,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bodiesValue = bodies;
    if (bodiesValue != null) {
      map['bodies'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersInvocationHttpParametersBody,
          Map<String, dynamic>>(bodiesValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersInvocationHttpParametersHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = pulumi.Input.encodeList<
          EventConnectionAuthParametersInvocationHttpParametersQueryString,
          Map<String, dynamic>>(queryStringsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventConnectionAuthParametersInvocationHttpParameters.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionAuthParametersInvocationHttpParameters(
      bodies: map['bodies'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersInvocationHttpParametersBody>(
              map['bodies'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersBody
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersInvocationHttpParametersHeader>(
              map['headers'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      queryStrings: map['queryStrings'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventConnectionAuthParametersInvocationHttpParametersQueryString>(
              map['queryStrings'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersQueryString
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
