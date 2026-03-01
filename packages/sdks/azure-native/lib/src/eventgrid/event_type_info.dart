// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_event_properties.dart';

/// The event type information for Channels.
class EventTypeInfo {
  /// A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// An example of a valid inline event name is "Contoso.OrderCreated".
  /// The inline event type values are of type InlineEventProperties and will contain additional information for every inline event type.
  final Map<String, InlineEventProperties>? inlineEventTypes;
  /// The kind of event type used.
  final String? kind;

  /// Creates a new [EventTypeInfo].
  /// [inlineEventTypes] A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// [kind] The kind of event type used.
  EventTypeInfo({
    this.inlineEventTypes,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineEventTypes': ?inlineEventTypes == null ? null : pulumi.Input.encodeMapValues<InlineEventProperties, Map<String, dynamic>>(inlineEventTypes!, (value) => value.toMap()),
      'kind': ?kind,
    };
  }

  factory EventTypeInfo.fromMap(Map<String, dynamic> map) {
    return EventTypeInfo(
      inlineEventTypes: map['inlineEventTypes'] == null ? null : pulumi.Input.decodeMapValues<InlineEventProperties>(map['inlineEventTypes'], (value) => InlineEventProperties.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

