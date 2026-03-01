// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_mqtt_destination.dart';

/// Defines the stream properties.
class NamespaceStream {
  /// Destinations for a stream.
  final List<StreamMqttDestination>? destinations;
  /// Name of the stream definition.
  final String name;
  /// Stringified JSON that contains connector-specific configuration for the specific stream.
  final String? streamConfiguration;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceStream].
  /// [destinations] Destinations for a stream.
  /// [name] Name of the stream definition.
  /// [streamConfiguration] Stringified JSON that contains connector-specific configuration for the specific stream.
  /// [typeRef] URI or type definition ID.
  NamespaceStream({
    this.destinations,
    required this.name,
    this.streamConfiguration,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<StreamMqttDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'name': name,
      'streamConfiguration': ?streamConfiguration,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceStream.fromMap(Map<String, dynamic> map) {
    return NamespaceStream(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<StreamMqttDestination>(map['destinations'], (value) => StreamMqttDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      streamConfiguration: map['streamConfiguration'] == null ? null : map['streamConfiguration'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

