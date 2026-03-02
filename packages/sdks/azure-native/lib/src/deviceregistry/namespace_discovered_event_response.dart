// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_mqtt_destination_response.dart';
import 'namespace_discovered_event_data_point_response.dart';

/// Defines the event properties.
class NamespaceDiscoveredEventResponse {
  /// Array of data points that are part of the event. Each data point can have a per-data point configuration.
  final pulumi.Input<List<NamespaceDiscoveredEventDataPointResponse>>? dataPoints;
  /// Destinations for an event.
  final pulumi.Input<List<EventMqttDestinationResponse>>? destinations;
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final pulumi.Input<String> eventNotifier;
  /// UTC timestamp indicating when the event was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// The name of the event.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDiscoveredEventResponse].
  /// [dataPoints] Array of data points that are part of the event. Each data point can have a per-data point configuration.
  /// [destinations] Destinations for an event.
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [lastUpdatedOn] UTC timestamp indicating when the event was added or modified.
  /// [name] The name of the event.
  /// [typeRef] URI or type definition ID.
  NamespaceDiscoveredEventResponse({
    this.dataPoints,
    this.destinations,
    this.eventConfiguration,
    required this.eventNotifier,
    this.lastUpdatedOn,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredEventDataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<NamespaceDiscoveredEventDataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<EventMqttDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<EventMqttDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventConfiguration': ?eventConfiguration,
      'eventNotifier': eventNotifier,
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredEventResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredEventResponse(
      dataPoints: map['dataPoints'] == null ? null : (pulumi.Input.decodeList<NamespaceDiscoveredEventDataPointResponse>(map['dataPoints']!, (value) => NamespaceDiscoveredEventDataPointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<EventMqttDestinationResponse>(map['destinations']!, (value) => EventMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventConfiguration: map['eventConfiguration'] == null ? null : (map['eventConfiguration']! as String).input(),
      eventNotifier: (map['eventNotifier'] as String).input(),
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : (map['lastUpdatedOn']! as String).input(),
      name: (map['name'] as String).input(),
      typeRef: map['typeRef'] == null ? null : (map['typeRef']! as String).input(),
    );
  }
}

