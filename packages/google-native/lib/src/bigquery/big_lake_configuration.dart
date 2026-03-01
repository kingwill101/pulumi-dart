// ignore_for_file: unused_element, unnecessary_cast

class BigLakeConfiguration {
  /// [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  final String? connectionId;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final String? fileFormat;

  /// [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  final String? storageUri;

  /// [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  final String? tableFormat;

  /// Creates a new [BigLakeConfiguration].
  /// [connectionId] [Required] Required and immutable. Credential reference for accessing external storage system. Normalized as project_id.location_id.connection_id.
  /// [fileFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  /// [storageUri] [Required] Required and immutable. Fully qualified location prefix of the external folder where data is stored. Normalized to standard format: "gs:////". Starts with "gs://" rather than "/bigstore/". Ends with "/". Does not contain "*". See also BigLakeStorageMetadata on how it is used.
  /// [tableFormat] [Required] Required and immutable. Open source file format that the table data is stored in. Currently only PARQUET is supported.
  BigLakeConfiguration({
    this.connectionId,
    this.fileFormat,
    this.storageUri,
    this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'fileFormat': ?fileFormat,
      'storageUri': ?storageUri,
      'tableFormat': ?tableFormat,
    };
  }

  factory BigLakeConfiguration.fromMap(Map<String, dynamic> map) {
    return BigLakeConfiguration(
      connectionId: map['connectionId'] == null
          ? null
          : map['connectionId'] as String,
      fileFormat: map['fileFormat'] == null
          ? null
          : map['fileFormat'] as String,
      storageUri: map['storageUri'] == null
          ? null
          : map['storageUri'] as String,
      tableFormat: map['tableFormat'] == null
          ? null
          : map['tableFormat'] as String,
    );
  }
}
