// ignore_for_file: unused_element, unnecessary_cast


class BigLakeConfigurationResponse {
  /// [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  final String connectionId;
  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final String fileFormat;
  /// [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  final String storageUri;
  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final String tableFormat;

  /// Creates a new [BigLakeConfigurationResponse].
  /// [connectionId] [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  /// [fileFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  /// [storageUri] [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  /// [tableFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  BigLakeConfigurationResponse({
    required this.connectionId,
    required this.fileFormat,
    required this.storageUri,
    required this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'fileFormat': fileFormat,
      'storageUri': storageUri,
      'tableFormat': tableFormat,
    };
  }

  factory BigLakeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BigLakeConfigurationResponse(
      connectionId: map['connectionId'] as String,
      fileFormat: map['fileFormat'] as String,
      storageUri: map['storageUri'] as String,
      tableFormat: map['tableFormat'] as String,
    );
  }
}

