// ignore_for_file: unused_element, unnecessary_cast

/// JSON file format configuration.
class JsonFileFormatResponse2 {
  /// Compression of the loaded JSON file.
  final String compression;

  /// The schema file format along JSON data files.
  final String schemaFileFormat;

  JsonFileFormatResponse2({
    required this.compression,
    required this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compression'] = compression;
    map['schemaFileFormat'] = schemaFileFormat;
    return map;
  }

  factory JsonFileFormatResponse2.fromMap(Map<String, dynamic> map) {
    return JsonFileFormatResponse2(
      compression: map['compression'] as String,
      schemaFileFormat: map['schemaFileFormat'] as String,
    );
  }
}
