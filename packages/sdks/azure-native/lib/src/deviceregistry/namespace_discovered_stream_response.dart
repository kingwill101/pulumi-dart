// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_mqtt_destination_response.dart';

/// Defines the stream properties.
class NamespaceDiscoveredStreamResponse {
  /// Destinations for a stream.
  final pulumi.Input<List<StreamMqttDestinationResponse>>? destinations;
  /// Timestamp (in UTC) indicating when the stream was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// Name of the stream definition.
  final pulumi.Input<String> name;
  /// Stringified JSON that contains connector-specific configuration for the specific stream.
  final pulumi.Input<String>? streamConfiguration;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDiscoveredStreamResponse].
  /// [destinations] Destinations for a stream.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the stream was added or modified.
  /// [name] Name of the stream definition.
  /// [streamConfiguration] Stringified JSON that contains connector-specific configuration for the specific stream.
  /// [typeRef] URI or type definition ID.
  NamespaceDiscoveredStreamResponse({
    this.destinations,
    this.lastUpdatedOn,
    required this.name,
    this.streamConfiguration,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<StreamMqttDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<StreamMqttDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'streamConfiguration': ?streamConfiguration,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredStreamResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredStreamResponse(
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<StreamMqttDestinationResponse>(map['destinations'], (value) => StreamMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : (map['lastUpdatedOn'] as String).input(),
      name: (map['name'] as String).input(),
      streamConfiguration: map['streamConfiguration'] == null ? null : (map['streamConfiguration'] as String).input(),
      typeRef: map['typeRef'] == null ? null : (map['typeRef'] as String).input(),
    );
  }
}

