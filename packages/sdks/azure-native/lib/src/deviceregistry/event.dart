// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic.dart';

/// Defines the event properties.
class Event {
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final pulumi.Input<String> eventNotifier;
  /// The name of the event.
  final pulumi.Input<String> name;
  /// An indication of how the event should be mapped to OpenTelemetry.
  final pulumi.Input<String>? observabilityMode;
  /// Object that describes the topic information for the specific event.
  final pulumi.Input<Topic>? topic;

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
      'topic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventConfiguration: map['eventConfiguration'] == null ? null : (map['eventConfiguration']! as String).input(),
      eventNotifier: (map['eventNotifier'] as String).input(),
      name: (map['name'] as String).input(),
      observabilityMode: map['observabilityMode'] == null ? null : (map['observabilityMode']! as String).input(),
      topic: map['topic'] == null ? null : (Topic.fromMap((map['topic']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

