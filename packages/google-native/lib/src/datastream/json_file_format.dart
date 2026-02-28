// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format_compression.dart';
import 'json_file_format_schema_file_format.dart';

/// JSON file format configuration.
class JsonFileFormat {
  /// Compression of the loaded JSON file.
  final JsonFileFormatCompression? compression;

  /// The schema file format along JSON data files.
  final JsonFileFormatSchemaFileFormat? schemaFileFormat;

  /// Creates a new [JsonFileFormat].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compressionValue = compression;
    if (compressionValue != null) {
      map['compression'] = compressionValue.value;
    }
    final schemaFileFormatValue = schemaFileFormat;
    if (schemaFileFormatValue != null) {
      map['schemaFileFormat'] = schemaFileFormatValue.value;
    }
    return map;
  }

  factory JsonFileFormat.fromMap(Map<String, dynamic> map) {
    return JsonFileFormat(
      compression: map['compression'] == null
          ? null
          : JsonFileFormatCompression.fromValue(map['compression'] as String),
      schemaFileFormat: map['schemaFileFormat'] == null
          ? null
          : JsonFileFormatSchemaFileFormat.fromValue(
              map['schemaFileFormat'] as String),
    );
  }
}
