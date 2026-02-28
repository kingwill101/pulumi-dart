// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format_compression_datastream_v1alpha1.dart';
import 'json_file_format_schema_file_format_datastream_v1alpha1.dart';

/// JSON file format configuration.
class JsonFileFormatDatastreamV1alpha1 {
  /// Compression of the loaded JSON file.
  final JsonFileFormatCompressionDatastreamV1alpha1? compression;
  /// The schema file format along JSON data files.
  final JsonFileFormatSchemaFileFormatDatastreamV1alpha1? schemaFileFormat;

  /// Creates a new [JsonFileFormatDatastreamV1alpha1].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormatDatastreamV1alpha1({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression == null ? null : compression!.value,
      'schemaFileFormat': ?schemaFileFormat == null ? null : schemaFileFormat!.value,
    };
  }

  factory JsonFileFormatDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return JsonFileFormatDatastreamV1alpha1(
      compression: map['compression'] == null ? null : JsonFileFormatCompressionDatastreamV1alpha1.fromValue(map['compression'] as String),
      schemaFileFormat: map['schemaFileFormat'] == null ? null : JsonFileFormatSchemaFileFormatDatastreamV1alpha1.fromValue(map['schemaFileFormat'] as String),
    );
  }
}

