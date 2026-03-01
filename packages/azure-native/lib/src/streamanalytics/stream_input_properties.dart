// ignore_for_file: unused_element, unnecessary_cast

import 'avro_serialization.dart';
import 'blob_stream_input_data_source.dart';
import 'compression.dart';

/// The properties that are associated with an input containing stream data.
class StreamInputProperties {
  /// Describes how input data is compressed
  final Compression? compression;
  /// Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  final BlobStreamInputDataSource? datasource;
  /// partitionKey Describes a key in the input data which is used for partitioning the input data
  final String? partitionKey;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final AvroSerialization? serialization;
  /// Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Stream'.
  final String type;

  /// Creates a new [StreamInputProperties].
  /// [compression] Describes how input data is compressed
  /// [datasource] Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  /// [partitionKey] partitionKey Describes a key in the input data which is used for partitioning the input data
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  StreamInputProperties({
    this.compression,
    this.datasource,
    this.partitionKey,
    this.serialization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression == null ? null : compression!.toMap(),
      'datasource': ?datasource == null ? null : datasource!.toMap(),
      'partitionKey': ?partitionKey,
      'serialization': ?serialization == null ? null : serialization!.toMap(),
      'type': type,
    };
  }

  factory StreamInputProperties.fromMap(Map<String, dynamic> map) {
    return StreamInputProperties(
      compression: map['compression'] == null ? null : Compression.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      datasource: map['datasource'] == null ? null : BlobStreamInputDataSource.fromMap((map['datasource'] as Map).cast<String, dynamic>()),
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      serialization: map['serialization'] == null ? null : AvroSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

