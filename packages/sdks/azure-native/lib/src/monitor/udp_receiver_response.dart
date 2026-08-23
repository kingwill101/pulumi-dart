// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_array_mapper_response.dart';

/// Receiver using UDP as transport protocol.
class UdpReceiverResponse {
  /// The encoding of the stream being received.
  final pulumi.Input<String>? encoding;
  /// TCP endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  final pulumi.Input<String> endpoint;
  /// Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  final pulumi.Input<JsonArrayMapperResponse>? jsonArrayMapper;
  /// Max read queue length.
  final pulumi.Input<int>? readQueueLength;

  /// Creates a new [UdpReceiverResponse].
  /// [encoding] The encoding of the stream being received.
  /// [endpoint] TCP endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  /// [jsonArrayMapper] Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  /// [readQueueLength] Max read queue length.
  const UdpReceiverResponse({
    this.encoding,
    required this.endpoint,
    this.jsonArrayMapper,
    this.readQueueLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'endpoint': endpoint,
      'jsonArrayMapper': ?pulumi.Input.mapOptionalInputValue<JsonArrayMapperResponse, Map<String, dynamic>>(jsonArrayMapper, (value) => value.toMap()),
      'readQueueLength': ?readQueueLength,
    };
  }

  factory UdpReceiverResponse.fromMap(Map<String, dynamic> map) {
    return UdpReceiverResponse(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      jsonArrayMapper: (() { final guardedValue = map['jsonArrayMapper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonArrayMapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readQueueLength: (() { final guardedValue = map['readQueueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
