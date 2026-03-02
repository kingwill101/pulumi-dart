// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_request_message_response.dart';
import 'event_response_message_response.dart';

/// The event for a webhook.
class EventResponse {
  /// The event request message sent to the service URI.
  final pulumi.Input<EventRequestMessageResponse>? eventRequestMessage;
  /// The event response message received from the service URI.
  final pulumi.Input<EventResponseMessageResponse>? eventResponseMessage;
  /// The event ID.
  final pulumi.Input<String>? id;

  /// Creates a new [EventResponse].
  /// [eventRequestMessage] The event request message sent to the service URI.
  /// [eventResponseMessage] The event response message received from the service URI.
  /// [id] The event ID.
  EventResponse({
    this.eventRequestMessage,
    this.eventResponseMessage,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventRequestMessage': ?pulumi.Input.mapOptionalInputValue<EventRequestMessageResponse, Map<String, dynamic>>(eventRequestMessage, (value) => value.toMap()),
      'eventResponseMessage': ?pulumi.Input.mapOptionalInputValue<EventResponseMessageResponse, Map<String, dynamic>>(eventResponseMessage, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory EventResponse.fromMap(Map<String, dynamic> map) {
    return EventResponse(
      eventRequestMessage: map['eventRequestMessage'] == null ? null : (EventRequestMessageResponse.fromMap((map['eventRequestMessage']! as Map).cast<String, dynamic>())).input(),
      eventResponseMessage: map['eventResponseMessage'] == null ? null : (EventResponseMessageResponse.fromMap((map['eventResponseMessage']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

