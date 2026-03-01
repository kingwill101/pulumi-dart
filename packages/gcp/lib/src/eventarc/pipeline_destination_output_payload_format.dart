// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_destination_output_payload_format_avro.dart';
import 'pipeline_destination_output_payload_format_protobuf.dart';

class PipelineDestinationOutputPayloadFormat {
  /// The format of an AVRO message payload.
  /// Structure is documented below.
  final PipelineDestinationOutputPayloadFormatAvro? avro;

  /// The format of a JSON message payload.
  final Map<String, dynamic>? json;

  /// The format of a Protobuf message payload.
  /// Structure is documented below.
  final PipelineDestinationOutputPayloadFormatProtobuf? protobuf;

  /// Creates a new [PipelineDestinationOutputPayloadFormat].
  /// [avro] The format of an AVRO message payload.
  /// [json] The format of a JSON message payload.
  /// [protobuf] The format of a Protobuf message payload.
  PipelineDestinationOutputPayloadFormat({this.avro, this.json, this.protobuf});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': ?avro == null ? null : avro!.toMap(),
      'json': ?json,
      'protobuf': ?protobuf == null ? null : protobuf!.toMap(),
    };
  }

  factory PipelineDestinationOutputPayloadFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineDestinationOutputPayloadFormat(
      avro: map['avro'] == null
          ? null
          : PipelineDestinationOutputPayloadFormatAvro.fromMap(
              (map['avro'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : (map['json'] as Map).cast<String, dynamic>(),
      protobuf: map['protobuf'] == null
          ? null
          : PipelineDestinationOutputPayloadFormatProtobuf.fromMap(
              (map['protobuf'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
