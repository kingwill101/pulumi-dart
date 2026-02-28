// ignore_for_file: unused_element, unnecessary_cast

/// JSON file format configuration.
class JsonFileFormatResponseDatastreamV1alpha1 {
  /// Compression of the loaded JSON file.
  final String compression;

  /// The schema file format along JSON data files.
  final String schemaFileFormat;

  /// Creates a new [JsonFileFormatResponseDatastreamV1alpha1].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormatResponseDatastreamV1alpha1({
    required this.compression,
    required this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compression'] = compression;
    map['schemaFileFormat'] = schemaFileFormat;
    return map;
  }

  factory JsonFileFormatResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return JsonFileFormatResponseDatastreamV1alpha1(
      compression: map['compression'] as String,
      schemaFileFormat: map['schemaFileFormat'] as String,
    );
  }
}
