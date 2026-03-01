// ignore_for_file: unused_element, unnecessary_cast

import 'topic.dart';

/// Defines the event properties.
class Event {
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final String eventNotifier;
  /// The name of the event.
  final String name;
  /// An indication of how the event should be mapped to OpenTelemetry.
  final String? observabilityMode;
  /// Object that describes the topic information for the specific event.
  final Topic? topic;

  /// Creates a new [Event].
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [name] The name of the event.
  /// [observabilityMode] An indication of how the event should be mapped to OpenTelemetry.
  /// [topic] Object that describes the topic information for the specific event.
  Event({
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
      'topic': ?topic == null ? null : topic!.toMap(),
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventConfiguration: map['eventConfiguration'] == null ? null : map['eventConfiguration'] as String,
      eventNotifier: map['eventNotifier'] as String,
      name: map['name'] as String,
      observabilityMode: map['observabilityMode'] == null ? null : map['observabilityMode'] as String,
      topic: map['topic'] == null ? null : Topic.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

