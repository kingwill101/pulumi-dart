// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_mqtt_destination_response.dart';

/// Defines the stream properties.
class NamespaceStreamResponse {
  /// Destinations for a stream.
  final List<StreamMqttDestinationResponse>? destinations;
  /// Name of the stream definition.
  final String name;
  /// Stringified JSON that contains connector-specific configuration for the specific stream.
  final String? streamConfiguration;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceStreamResponse].
  /// [destinations] Destinations for a stream.
  /// [name] Name of the stream definition.
  /// [streamConfiguration] Stringified JSON that contains connector-specific configuration for the specific stream.
  /// [typeRef] URI or type definition ID.
  NamespaceStreamResponse({
    this.destinations,
    required this.name,
    this.streamConfiguration,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<StreamMqttDestinationResponse, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'name': name,
      'streamConfiguration': ?streamConfiguration,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceStreamResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceStreamResponse(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<StreamMqttDestinationResponse>(map['destinations'], (value) => StreamMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      streamConfiguration: map['streamConfiguration'] == null ? null : map['streamConfiguration'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

