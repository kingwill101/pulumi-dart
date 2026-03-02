// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_array_mapper.dart';

/// Receiver using UDP as transport protocol.
class UdpReceiver {
  /// The encoding of the stream being received.
  final pulumi.Input<String>? encoding;
  /// TCP endpoint definition. Example: 0.0.0.0:<port>.
  final pulumi.Input<String> endpoint;
  /// Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  final pulumi.Input<JsonArrayMapper>? jsonArrayMapper;
  /// Max read queue length.
  final pulumi.Input<int>? readQueueLength;

  /// Creates a new [UdpReceiver].
  /// [encoding] The encoding of the stream being received.
  /// [endpoint] TCP endpoint definition. Example: 0.0.0.0:<port>.
  /// [jsonArrayMapper] Json array mapper - allows this udp receiver to parse a value from a given source field as a json array, match a key to each parsed value and output the key-value map to a given output field.
  /// [readQueueLength] Max read queue length.
  UdpReceiver({
    this.encoding,
    required this.endpoint,
    this.jsonArrayMapper,
    this.readQueueLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'endpoint': endpoint,
      'jsonArrayMapper': ?pulumi.Input.mapOptionalInputValue<JsonArrayMapper, Map<String, dynamic>>(jsonArrayMapper, (value) => value.toMap()),
      'readQueueLength': ?readQueueLength,
    };
  }

  factory UdpReceiver.fromMap(Map<String, dynamic> map) {
    return UdpReceiver(
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      jsonArrayMapper: map['jsonArrayMapper'] == null ? null : (JsonArrayMapper.fromMap((map['jsonArrayMapper'] as Map).cast<String, dynamic>())).input(),
      readQueueLength: map['readQueueLength'] == null ? null : (map['readQueueLength'] as int).input(),
    );
  }
}

