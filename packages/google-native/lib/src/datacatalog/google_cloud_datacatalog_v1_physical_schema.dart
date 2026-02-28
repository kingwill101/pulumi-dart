// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_physical_schema_avro_schema.dart';
import 'google_cloud_datacatalog_v1_physical_schema_protobuf_schema.dart';
import 'google_cloud_datacatalog_v1_physical_schema_thrift_schema.dart';

/// Native schema used by a resource represented as an entry. Used by query engines for deserializing and parsing source data.
class GoogleCloudDatacatalogV1PhysicalSchema {
  /// Schema in Avro JSON format.
  final GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema? avro;

  /// Marks a CSV-encoded data source.
  final Map<String, dynamic>? csv;

  /// Marks an ORC-encoded data source.
  final Map<String, dynamic>? orc;

  /// Marks a Parquet-encoded data source.
  final Map<String, dynamic>? parquet;

  /// Schema in protocol buffer format.
  final GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema? protobuf;

  /// Schema in Thrift format.
  final GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema? thrift;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchema].
  /// [avro] Schema in Avro JSON format.
  /// [csv] Marks a CSV-encoded data source.
  /// [orc] Marks an ORC-encoded data source.
  /// [parquet] Marks a Parquet-encoded data source.
  /// [protobuf] Schema in protocol buffer format.
  /// [thrift] Schema in Thrift format.
  GoogleCloudDatacatalogV1PhysicalSchema({
    this.avro,
    this.csv,
    this.orc,
    this.parquet,
    this.protobuf,
    this.thrift,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final avroValue = avro;
    if (avroValue != null) {
      map['avro'] = avroValue.toMap();
    }
    final csvValue = csv;
    if (csvValue != null) {
      map['csv'] = csvValue;
    }
    final orcValue = orc;
    if (orcValue != null) {
      map['orc'] = orcValue;
    }
    final parquetValue = parquet;
    if (parquetValue != null) {
      map['parquet'] = parquetValue;
    }
    final protobufValue = protobuf;
    if (protobufValue != null) {
      map['protobuf'] = protobufValue.toMap();
    }
    final thriftValue = thrift;
    if (thriftValue != null) {
      map['thrift'] = thriftValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1PhysicalSchema.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchema(
      avro: map['avro'] == null
          ? null
          : GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromMap(
              (map['avro'] as Map).cast<String, dynamic>()),
      csv: map['csv'] == null
          ? null
          : (map['csv'] as Map).cast<String, dynamic>(),
      orc: map['orc'] == null
          ? null
          : (map['orc'] as Map).cast<String, dynamic>(),
      parquet: map['parquet'] == null
          ? null
          : (map['parquet'] as Map).cast<String, dynamic>(),
      protobuf: map['protobuf'] == null
          ? null
          : GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromMap(
              (map['protobuf'] as Map).cast<String, dynamic>()),
      thrift: map['thrift'] == null
          ? null
          : GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromMap(
              (map['thrift'] as Map).cast<String, dynamic>()),
    );
  }
}
