// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_event_properties_response.dart';

/// The event type information for Channels.
class EventTypeInfoResponse {
  /// A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// An example of a valid inline event name is "Contoso.OrderCreated".
  /// The inline event type values are of type InlineEventProperties and will contain additional information for every inline event type.
  final pulumi.Input<Map<String, InlineEventPropertiesResponse>>? inlineEventTypes;
  /// The kind of event type used.
  final pulumi.Input<String>? kind;

  /// Creates a new [EventTypeInfoResponse].
  /// [inlineEventTypes] A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// [kind] The kind of event type used.
  EventTypeInfoResponse({
    this.inlineEventTypes,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineEventTypes': ?pulumi.Input.mapOptionalInputValue<Map<String, InlineEventPropertiesResponse>, Map<String, Map<String, dynamic>>>(inlineEventTypes, (value) => pulumi.Input.encodeMapValues<InlineEventPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
    };
  }

  factory EventTypeInfoResponse.fromMap(Map<String, dynamic> map) {
    return EventTypeInfoResponse(
      inlineEventTypes: map['inlineEventTypes'] == null ? null : (pulumi.Input.decodeMapValues<InlineEventPropertiesResponse>(map['inlineEventTypes'], (value) => InlineEventPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}

