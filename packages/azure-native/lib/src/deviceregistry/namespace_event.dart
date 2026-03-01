// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_mqtt_destination.dart';
import 'namespace_event_data_point.dart';

/// Defines the event properties.
class NamespaceEvent {
  /// Array of data points that are part of the event. Each data point can have a per-data point configuration.
  final List<NamespaceEventDataPoint>? dataPoints;
  /// Destinations for an event.
  final List<EventMqttDestination>? destinations;
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final String eventNotifier;
  /// The name of the event.
  final String name;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceEvent].
  /// [dataPoints] Array of data points that are part of the event. Each data point can have a per-data point configuration.
  /// [destinations] Destinations for an event.
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [name] The name of the event.
  /// [typeRef] URI or type definition ID.
  NamespaceEvent({
    this.dataPoints,
    this.destinations,
    this.eventConfiguration,
    required this.eventNotifier,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?dataPoints == null ? null : pulumi.Input.encodeList<NamespaceEventDataPoint, Map<String, dynamic>>(dataPoints!, (value) => value.toMap()),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<EventMqttDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'eventConfiguration': ?eventConfiguration,
      'eventNotifier': eventNotifier,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceEvent.fromMap(Map<String, dynamic> map) {
    return NamespaceEvent(
      dataPoints: map['dataPoints'] == null ? null : pulumi.Input.decodeList<NamespaceEventDataPoint>(map['dataPoints'], (value) => NamespaceEventDataPoint.fromMap((value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<EventMqttDestination>(map['destinations'], (value) => EventMqttDestination.fromMap((value as Map).cast<String, dynamic>())),
      eventConfiguration: map['eventConfiguration'] == null ? null : map['eventConfiguration'] as String,
      eventNotifier: map['eventNotifier'] as String,
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

