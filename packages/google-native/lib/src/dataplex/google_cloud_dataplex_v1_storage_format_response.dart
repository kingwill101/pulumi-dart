// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_storage_format_csv_options_response.dart';
import 'google_cloud_dataplex_v1_storage_format_iceberg_options_response.dart';
import 'google_cloud_dataplex_v1_storage_format_json_options_response.dart';

/// Describes the format of the data within its storage location.
class GoogleCloudDataplexV1StorageFormatResponse {
  /// Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.
  final String compressionFormat;

  /// Optional. Additional information about CSV formatted data.
  final GoogleCloudDataplexV1StorageFormatCsvOptionsResponse csv;

  /// The data format associated with the stored data, which represents content type values. The value is inferred from mime type.
  final String format;

  /// Optional. Additional information about iceberg tables.
  final GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse iceberg;

  /// Optional. Additional information about CSV formatted data.
  final GoogleCloudDataplexV1StorageFormatJsonOptionsResponse json;

  /// The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Supported values: application/x-parquet application/x-avro application/x-orc application/x-tfrecord application/x-parquet+iceberg application/x-avro+iceberg application/x-orc+iceberg application/json application/{subtypes} text/csv text/ image/{image subtype} video/{video subtype} audio/{audio subtype}
  final String mimeType;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatResponse].
  /// [compressionFormat] Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.
  /// [csv] Optional. Additional information about CSV formatted data.
  /// [format] The data format associated with the stored data, which represents content type values. The value is inferred from mime type.
  /// [iceberg] Optional. Additional information about iceberg tables.
  /// [json] Optional. Additional information about CSV formatted data.
  /// [mimeType] The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Supported values: application/x-parquet application/x-avro application/x-orc application/x-tfrecord application/x-parquet+iceberg application/x-avro+iceberg application/x-orc+iceberg application/json application/{subtypes} text/csv text/ image/{image subtype} video/{video subtype} audio/{audio subtype}
  GoogleCloudDataplexV1StorageFormatResponse({
    required this.compressionFormat,
    required this.csv,
    required this.format,
    required this.iceberg,
    required this.json,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionFormat': compressionFormat,
      'csv': csv.toMap(),
      'format': format,
      'iceberg': iceberg.toMap(),
      'json': json.toMap(),
      'mimeType': mimeType,
    };
  }

  factory GoogleCloudDataplexV1StorageFormatResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1StorageFormatResponse(
      compressionFormat: map['compressionFormat'] as String,
      csv: GoogleCloudDataplexV1StorageFormatCsvOptionsResponse.fromMap(
        (map['csv'] as Map).cast<String, dynamic>(),
      ),
      format: map['format'] as String,
      iceberg: GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse.fromMap(
        (map['iceberg'] as Map).cast<String, dynamic>(),
      ),
      json: GoogleCloudDataplexV1StorageFormatJsonOptionsResponse.fromMap(
        (map['json'] as Map).cast<String, dynamic>(),
      ),
      mimeType: map['mimeType'] as String,
    );
  }
}
