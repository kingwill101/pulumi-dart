// ignore_for_file: unused_element, unnecessary_cast

class StreamDestinationConfigGcsDestinationConfigJsonFileFormat {
  /// Compression of the loaded JSON file.
  /// Possible values are: `NO_COMPRESSION`, `GZIP`.
  final String? compression;

  /// The schema file format along JSON data files.
  /// Possible values are: `NO_SCHEMA_FILE`, `AVRO_SCHEMA_FILE`.
  final String? schemaFileFormat;

  StreamDestinationConfigGcsDestinationConfigJsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compressionValue = compression;
    if (compressionValue != null) {
      map['compression'] = compressionValue;
    }
    final schemaFileFormatValue = schemaFileFormat;
    if (schemaFileFormatValue != null) {
      map['schemaFileFormat'] = schemaFileFormatValue;
    }
    return map;
  }

  factory StreamDestinationConfigGcsDestinationConfigJsonFileFormat.fromMap(
      Map<String, dynamic> map) {
    return StreamDestinationConfigGcsDestinationConfigJsonFileFormat(
      compression:
          map['compression'] == null ? null : map['compression'] as String,
      schemaFileFormat: map['schemaFileFormat'] == null
          ? null
          : map['schemaFileFormat'] as String,
    );
  }
}
