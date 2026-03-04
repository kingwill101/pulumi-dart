// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic.dart';

/// Defines the event properties.
class DiscoveredEvent {
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? eventConfiguration;

  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final pulumi.Input<String> eventNotifier;

  /// UTC timestamp indicating when the event was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;

  /// The name of the event.
  final pulumi.Input<String> name;

  /// Object that describes the topic information for the specific event.
  final pulumi.Input<Topic>? topic;

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
      'topic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(
        topic,
        (value) => value.toMap(),
      ),
    };
  }

  factory DiscoveredEvent.fromMap(Map<String, dynamic> map) {
    return DiscoveredEvent(
      eventConfiguration: (() {
        final guardedValue = map['eventConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventNotifier: pulumi.Input.fromValue(map['eventNotifier'] as String),
      lastUpdatedOn: (() {
        final guardedValue = map['lastUpdatedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Topic.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
