// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_event_data_point.dart';

/// Defines the event properties.
class NamespaceEvent {
  /// Array of data points that are part of the event. Each data point can have a per-data point configuration.
  final pulumi.Input<List<NamespaceEventDataPoint>?>? dataPoints;
  /// Destinations for an event.
  final pulumi.Input<List<dynamic>?>? destinations;
  /// Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String?>? eventConfiguration;
  /// The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  final pulumi.Input<String> eventNotifier;
  /// The name of the event.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String?>? typeRef;

  /// Creates a new [NamespaceEvent].
  /// [dataPoints] Array of data points that are part of the event. Each data point can have a per-data point configuration.
  /// [destinations] Destinations for an event.
  /// [eventConfiguration] Stringified JSON that contains connector-specific configuration for the event. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [eventNotifier] The address of the notifier of the event in the asset (e.g. URL) so that a client can access the event on the asset.
  /// [name] The name of the event.
  /// [typeRef] URI or type definition ID.
  const NamespaceEvent({
    this.dataPoints,
    this.destinations,
    this.eventConfiguration,
    required this.eventNotifier,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<NamespaceEventDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<NamespaceEventDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': ?destinations,
      'eventConfiguration': ?eventConfiguration,
      'eventNotifier': eventNotifier,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceEvent.fromMap(Map<String, dynamic> map) {
    return NamespaceEvent(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceEventDataPoint>(guardedValue, (value) => NamespaceEventDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      eventConfiguration: (() { final guardedValue = map['eventConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventNotifier: pulumi.Input.fromValue(map['eventNotifier'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
