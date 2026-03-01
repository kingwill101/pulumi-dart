// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_input_payload_format_avro.dart';
import 'pipeline_input_payload_format_protobuf.dart';

class PipelineInputPayloadFormat {
  /// The format of an AVRO message payload.
  /// Structure is documented below.
  final PipelineInputPayloadFormatAvro? avro;

  /// The format of a JSON message payload.
  final Map<String, dynamic>? json;

  /// The format of a Protobuf message payload.
  /// Structure is documented below.
  final PipelineInputPayloadFormatProtobuf? protobuf;

  /// Creates a new [PipelineInputPayloadFormat].
  /// [avro] The format of an AVRO message payload.
  /// [json] The format of a JSON message payload.
  /// [protobuf] The format of a Protobuf message payload.
  PipelineInputPayloadFormat({this.avro, this.json, this.protobuf});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': ?avro == null ? null : avro!.toMap(),
      'json': ?json,
      'protobuf': ?protobuf == null ? null : protobuf!.toMap(),
    };
  }

  factory PipelineInputPayloadFormat.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormat(
      avro: map['avro'] == null
          ? null
          : PipelineInputPayloadFormatAvro.fromMap(
              (map['avro'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : (map['json'] as Map).cast<String, dynamic>(),
      protobuf: map['protobuf'] == null
          ? null
          : PipelineInputPayloadFormatProtobuf.fromMap(
              (map['protobuf'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
