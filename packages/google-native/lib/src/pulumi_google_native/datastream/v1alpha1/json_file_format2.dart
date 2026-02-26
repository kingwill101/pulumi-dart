// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format_compression2.dart';
import 'json_file_format_schema_file_format2.dart';

/// JSON file format configuration.
class JsonFileFormat2 {
  /// Compression of the loaded JSON file.
  final JsonFileFormatCompression2? compression;

  /// The schema file format along JSON data files.
  final JsonFileFormatSchemaFileFormat2? schemaFileFormat;

  JsonFileFormat2({
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

  factory JsonFileFormat2.fromMap(Map<String, dynamic> map) {
    return JsonFileFormat2(
      compression: map['compression'] == null
          ? null
          : JsonFileFormatCompression2.fromValue(map['compression'] as String),
      schemaFileFormat: map['schemaFileFormat'] == null
          ? null
          : JsonFileFormatSchemaFileFormat2.fromValue(
              map['schemaFileFormat'] as String),
    );
  }
}
