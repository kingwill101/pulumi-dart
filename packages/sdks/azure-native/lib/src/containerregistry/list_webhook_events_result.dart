// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_response.dart';

/// Result data returned by listWebhookEvents.
class ListWebhookEventsResult {
  /// The URI that can be used to request the next list of events.
  final String? nextLink;
  /// The list of events. Since this list may be incomplete, the nextLink field should be used to request the next list of events.
  final List<EventResponse>? value;

  /// Creates a new [ListWebhookEventsResult].
  /// [nextLink] The URI that can be used to request the next list of events.
  /// [value] The list of events. Since this list may be incomplete, the nextLink field should be used to request the next list of events.
  ListWebhookEventsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListWebhookEventsResult.fromMap(Map<String, dynamic> map) {
    return ListWebhookEventsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<EventResponse>(map['value']!, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

