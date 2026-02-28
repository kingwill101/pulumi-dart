// ignore_for_file: unused_element, unnecessary_cast


/// Describes Iceberg data format.
class GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse {
  /// Optional. The location of where the iceberg metadata is present, must be within the table path
  final String metadataLocation;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse].
  /// [metadataLocation] Optional. The location of where the iceberg metadata is present, must be within the table path
  GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse({
    required this.metadataLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLocation': metadataLocation,
    };
  }

  factory GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatIcebergOptionsResponse(
      metadataLocation: map['metadataLocation'] as String,
    );
  }
}

