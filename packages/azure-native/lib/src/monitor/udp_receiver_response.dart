// ignore_for_file: unused_element, unnecessary_cast

import 'json_array_mapper_response.dart';

/// Receiver using UDP as transport protocol.
class UdpReceiverResponse {
  /// The encoding of the stream being received.
  final String? encoding;
  /// TCP endpoint definition. Example: 0.0.0.0:<port>.
  final String endpoint;
  /// Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  final JsonArrayMapperResponse? jsonArrayMapper;
  /// Max read queue length.
  final int? readQueueLength;

  /// Creates a new [UdpReceiverResponse].
  /// [encoding] The encoding of the stream being received.
  /// [endpoint] TCP endpoint definition. Example: 0.0.0.0:<port>.
  /// [jsonArrayMapper] Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  /// [readQueueLength] Max read queue length.
  UdpReceiverResponse({
    this.encoding,
    required this.endpoint,
    this.jsonArrayMapper,
    this.readQueueLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'endpoint': endpoint,
      'jsonArrayMapper': ?jsonArrayMapper == null ? null : jsonArrayMapper!.toMap(),
      'readQueueLength': ?readQueueLength,
    };
  }

  factory UdpReceiverResponse.fromMap(Map<String, dynamic> map) {
    return UdpReceiverResponse(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      endpoint: map['endpoint'] as String,
      jsonArrayMapper: map['jsonArrayMapper'] == null ? null : JsonArrayMapperResponse.fromMap((map['jsonArrayMapper'] as Map).cast<String, dynamic>()),
      readQueueLength: map['readQueueLength'] == null ? null : map['readQueueLength'] as int,
    );
  }
}

