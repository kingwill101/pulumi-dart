// ignore_for_file: unused_element, unnecessary_cast

import 'topic.dart';

/// Defines the event properties.
class DiscoveredEvent {
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final String eventNotifier;
  /// UTC timestamp indicating when the event was added or modified.
  final String? lastUpdatedOn;
  /// The name of the event.
  final String name;
  /// Object that describes the topic information for the specific event.
  final Topic? topic;

  /// Creates a new [DiscoveredEvent].
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [lastUpdatedOn] UTC timestamp indicating when the event was added or modified.
  /// [name] The name of the event.
  /// [topic] Object that describes the topic information for the specific event.
  DiscoveredEvent({
    this.eventConfiguration,
    required this.eventNotifier,
    this.lastUpdatedOn,
    required this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventConfiguration': ?eventConfiguration,
      'eventNotifier': eventNotifier,
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'topic': ?topic == null ? null : topic!.toMap(),
    };
  }

  factory DiscoveredEvent.fromMap(Map<String, dynamic> map) {
    return DiscoveredEvent(
      eventConfiguration: map['eventConfiguration'] == null ? null : map['eventConfiguration'] as String,
      eventNotifier: map['eventNotifier'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : map['lastUpdatedOn'] as String,
      name: map['name'] as String,
      topic: map['topic'] == null ? null : Topic.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

