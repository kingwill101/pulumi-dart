// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_response.dart';

/// Defines the event properties.
class EventResponse {
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final pulumi.Input<String> eventNotifier;
  /// The name of the event.
  final pulumi.Input<String> name;
  /// An indication of how the event should be mapped to OpenTelemetry.
  final pulumi.Input<String>? observabilityMode;
  /// Object that describes the topic information for the specific event.
  final pulumi.Input<TopicResponse>? topic;

  /// Creates a new [EventResponse].
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [name] The name of the event.
  /// [observabilityMode] An indication of how the event should be mapped to OpenTelemetry.
  /// [topic] Object that describes the topic information for the specific event.
  EventResponse({
    this.eventConfiguration,
    required this.eventNotifier,
    required this.name,
    this.observabilityMode,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventConfiguration': ?eventConfiguration,
      'eventNotifier': eventNotifier,
      'name': name,
      'observabilityMode': ?observabilityMode,
      'topic': ?pulumi.Input.mapOptionalInputValue<TopicResponse, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory EventResponse.fromMap(Map<String, dynamic> map) {
    return EventResponse(
      eventConfiguration: (() { final guardedValue = map['eventConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventNotifier: pulumi.Input.fromValue(map['eventNotifier'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      observabilityMode: (() { final guardedValue = map['observabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

