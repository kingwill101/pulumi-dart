// ignore_for_file: unused_element, unnecessary_cast

class TableHiveOptionsStorageDescriptor {
  /// The fully qualified Java class name of the input format.
  final String? inputFormat;

  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final String? locationUri;

  /// The fully qualified Java class name of the output format.
  final String? outputFormat;

  /// Creates a new [TableHiveOptionsStorageDescriptor].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  TableHiveOptionsStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputFormatValue = inputFormat;
    if (inputFormatValue != null) {
      map['inputFormat'] = inputFormatValue;
    }
    final locationUriValue = locationUri;
    if (locationUriValue != null) {
      map['locationUri'] = locationUriValue;
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    return map;
  }

  factory TableHiveOptionsStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return TableHiveOptionsStorageDescriptor(
      inputFormat:
          map['inputFormat'] == null ? null : map['inputFormat'] as String,
      locationUri:
          map['locationUri'] == null ? null : map['locationUri'] as String,
      outputFormat:
          map['outputFormat'] == null ? null : map['outputFormat'] as String,
    );
  }
}
