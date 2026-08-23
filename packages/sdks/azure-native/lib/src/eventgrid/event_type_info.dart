// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_event_properties.dart';

/// The event type information for Channels.
class EventTypeInfo {
  /// A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// An example of a valid inline event name is "Contoso.OrderCreated".
  /// The inline event type values are of type InlineEventProperties and will contain additional information for every inline event type.
  final pulumi.Input<Map<String, InlineEventProperties>>? inlineEventTypes;
  /// The kind of event type used.
  final pulumi.Input<String>? kind;

  /// Creates a new [EventTypeInfo].
  /// [inlineEventTypes] A collection of inline event types for the resource. The inline event type keys are of type string which represents the name of the event.
  /// [kind] The kind of event type used.
  const EventTypeInfo({
    this.inlineEventTypes,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineEventTypes': ?pulumi.Input.mapOptionalInputValue<Map<String, InlineEventProperties>, Map<String, Map<String, dynamic>>>(inlineEventTypes, (value) => pulumi.Input.encodeMapValues<InlineEventProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
    };
  }

  factory EventTypeInfo.fromMap(Map<String, dynamic> map) {
    return EventTypeInfo(
      inlineEventTypes: (() { final guardedValue = map['inlineEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<InlineEventProperties>(guardedValue, (value) => InlineEventProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
