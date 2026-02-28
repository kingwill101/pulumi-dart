// ignore_for_file: unused_element, unnecessary_cast

/// Describes Iceberg data format.
class GoogleCloudDataplexV1StorageFormatIcebergOptions {
  /// Optional. The location of where the iceberg metadata is present, must be within the table path
  final String? metadataLocation;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatIcebergOptions].
  /// [metadataLocation] Optional. The location of where the iceberg metadata is present, must be within the table path
  GoogleCloudDataplexV1StorageFormatIcebergOptions({
    this.metadataLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataLocationValue = metadataLocation;
    if (metadataLocationValue != null) {
      map['metadataLocation'] = metadataLocationValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1StorageFormatIcebergOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatIcebergOptions(
      metadataLocation: map['metadataLocation'] == null
          ? null
          : map['metadataLocation'] as String,
    );
  }
}
