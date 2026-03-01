// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_storage_format_compression_format.dart';
import 'google_cloud_dataplex_v1_storage_format_csv_options.dart';
import 'google_cloud_dataplex_v1_storage_format_iceberg_options.dart';
import 'google_cloud_dataplex_v1_storage_format_json_options.dart';

/// Describes the format of the data within its storage location.
class GoogleCloudDataplexV1StorageFormat {
  /// Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.
  final GoogleCloudDataplexV1StorageFormatCompressionFormat? compressionFormat;

  /// Optional. Additional information about CSV formatted data.
  final GoogleCloudDataplexV1StorageFormatCsvOptions? csv;

  /// Optional. Additional information about iceberg tables.
  final GoogleCloudDataplexV1StorageFormatIcebergOptions? iceberg;

  /// Optional. Additional information about CSV formatted data.
  final GoogleCloudDataplexV1StorageFormatJsonOptions? json;

  /// The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Supported values: application/x-parquet application/x-avro application/x-orc application/x-tfrecord application/x-parquet+iceberg application/x-avro+iceberg application/x-orc+iceberg application/json application/{subtypes} text/csv text/ image/{image subtype} video/{video subtype} audio/{audio subtype}
  final String mimeType;

  /// Creates a new [GoogleCloudDataplexV1StorageFormat].
  /// [compressionFormat] Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.
  /// [csv] Optional. Additional information about CSV formatted data.
  /// [iceberg] Optional. Additional information about iceberg tables.
  /// [json] Optional. Additional information about CSV formatted data.
  /// [mimeType] The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Supported values: application/x-parquet application/x-avro application/x-orc application/x-tfrecord application/x-parquet+iceberg application/x-avro+iceberg application/x-orc+iceberg application/json application/{subtypes} text/csv text/ image/{image subtype} video/{video subtype} audio/{audio subtype}
  GoogleCloudDataplexV1StorageFormat({
    this.compressionFormat,
    this.csv,
    this.iceberg,
    this.json,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionFormat': ?compressionFormat == null
          ? null
          : compressionFormat!.value,
      'csv': ?csv == null ? null : csv!.toMap(),
      'iceberg': ?iceberg == null ? null : iceberg!.toMap(),
      'json': ?json == null ? null : json!.toMap(),
      'mimeType': mimeType,
    };
  }

  factory GoogleCloudDataplexV1StorageFormat.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormat(
      compressionFormat: map['compressionFormat'] == null
          ? null
          : GoogleCloudDataplexV1StorageFormatCompressionFormat.fromValue(
              map['compressionFormat'] as String,
            ),
      csv: map['csv'] == null
          ? null
          : GoogleCloudDataplexV1StorageFormatCsvOptions.fromMap(
              (map['csv'] as Map).cast<String, dynamic>(),
            ),
      iceberg: map['iceberg'] == null
          ? null
          : GoogleCloudDataplexV1StorageFormatIcebergOptions.fromMap(
              (map['iceberg'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : GoogleCloudDataplexV1StorageFormatJsonOptions.fromMap(
              (map['json'] as Map).cast<String, dynamic>(),
            ),
      mimeType: map['mimeType'] as String,
    );
  }
}
