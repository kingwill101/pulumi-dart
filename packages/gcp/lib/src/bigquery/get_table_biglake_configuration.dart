// ignore_for_file: unused_element, unnecessary_cast


class GetTableBiglakeConfiguration {
  /// The connection specifying the credentials to be used to read and write to external storage, such as Cloud Storage. The connection_id can have the form "&lt;project\_id&gt;.&lt;location\_id&gt;.&lt;connection\_id&gt;" or "projects/&lt;project\_id&gt;/locations/&lt;location\_id&gt;/connections/&lt;connection\_id&gt;".
  final String connectionId;
  /// The file format the data is stored in.
  final String fileFormat;
  /// The fully qualified location prefix of the external folder where table data is stored. The '*' wildcard character is not allowed. The URI should be in the format "gs://bucket/path_to_table/"
  final String storageUri;
  /// The table format the metadata only snapshots are stored in.
  final String tableFormat;

  /// Creates a new [GetTableBiglakeConfiguration].
  /// [connectionId] The connection specifying the credentials to be used to read and write to external storage, such as Cloud Storage. The connection_id can have the form "&lt;project\_id&gt;.&lt;location\_id&gt;.&lt;connection\_id&gt;" or "projects/&lt;project\_id&gt;/locations/&lt;location\_id&gt;/connections/&lt;connection\_id&gt;".
  /// [fileFormat] The file format the data is stored in.
  /// [storageUri] The fully qualified location prefix of the external folder where table data is stored. The '*' wildcard character is not allowed. The URI should be in the format "gs://bucket/path_to_table/"
  /// [tableFormat] The table format the metadata only snapshots are stored in.
  GetTableBiglakeConfiguration({
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

  factory GetTableBiglakeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTableBiglakeConfiguration(
      connectionId: map['connectionId'] as String,
      fileFormat: map['fileFormat'] as String,
      storageUri: map['storageUri'] as String,
      tableFormat: map['tableFormat'] as String,
    );
  }
}

