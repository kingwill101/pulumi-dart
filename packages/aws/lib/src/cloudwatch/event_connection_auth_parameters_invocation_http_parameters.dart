// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_invocation_http_parameters_body.dart';
import 'event_connection_auth_parameters_invocation_http_parameters_header.dart';
import 'event_connection_auth_parameters_invocation_http_parameters_query_string.dart';

class EventConnectionAuthParametersInvocationHttpParameters {
  /// Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersBody>? bodies;

  /// Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersHeader>?
  headers;

  /// Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:
  final List<EventConnectionAuthParametersInvocationHttpParametersQueryString>?
  queryStrings;

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
      'bodies': ?bodies == null
          ? null
          : pulumi.Input.encodeList<
              EventConnectionAuthParametersInvocationHttpParametersBody,
              Map<String, dynamic>
            >(bodies!, (value) => value.toMap()),
      'headers': ?headers == null
          ? null
          : pulumi.Input.encodeList<
              EventConnectionAuthParametersInvocationHttpParametersHeader,
              Map<String, dynamic>
            >(headers!, (value) => value.toMap()),
      'queryStrings': ?queryStrings == null
          ? null
          : pulumi.Input.encodeList<
              EventConnectionAuthParametersInvocationHttpParametersQueryString,
              Map<String, dynamic>
            >(queryStrings!, (value) => value.toMap()),
    };
  }

  factory EventConnectionAuthParametersInvocationHttpParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventConnectionAuthParametersInvocationHttpParameters(
      bodies: map['bodies'] == null
          ? null
          : pulumi.Input.decodeList<
              EventConnectionAuthParametersInvocationHttpParametersBody
            >(
              map['bodies'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersBody.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
              EventConnectionAuthParametersInvocationHttpParametersHeader
            >(
              map['headers'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      queryStrings: map['queryStrings'] == null
          ? null
          : pulumi.Input.decodeList<
              EventConnectionAuthParametersInvocationHttpParametersQueryString
            >(
              map['queryStrings'],
              (value) =>
                  EventConnectionAuthParametersInvocationHttpParametersQueryString.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
