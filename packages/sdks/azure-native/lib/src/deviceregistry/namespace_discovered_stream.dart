// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_mqtt_destination.dart';

/// Defines the stream properties.
class NamespaceDiscoveredStream {
  /// Destinations for a stream.
  final pulumi.Input<List<StreamMqttDestination>>? destinations;
  /// Timestamp (in UTC) indicating when the stream was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// Name of the stream definition.
  final pulumi.Input<String> name;
  /// Stringified JSON that contains connector-specific configuration for the specific stream.
  final pulumi.Input<String>? streamConfiguration;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDiscoveredStream].
  /// [destinations] Destinations for a stream.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the stream was added or modified.
  /// [name] Name of the stream definition.
  /// [streamConfiguration] Stringified JSON that contains connector-specific configuration for the specific stream.
  /// [typeRef] URI or type definition ID.
  const NamespaceDiscoveredStream({
    this.destinations,
    this.lastUpdatedOn,
    required this.name,
    this.streamConfiguration,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<StreamMqttDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<StreamMqttDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'streamConfiguration': ?streamConfiguration,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredStream.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredStream(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamMqttDestination>(guardedValue, (value) => StreamMqttDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastUpdatedOn: (() { final guardedValue = map['lastUpdatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      streamConfiguration: (() { final guardedValue = map['streamConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
