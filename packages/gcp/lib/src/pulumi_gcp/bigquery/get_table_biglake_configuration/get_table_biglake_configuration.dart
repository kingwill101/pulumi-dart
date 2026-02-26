// ignore_for_file: unused_element, unnecessary_cast

class GetTableBiglakeConfiguration {
  /// The connection specifying the credentials to be used to read and write to external storage, such as Cloud Storage. The<span pulumi-lang-nodejs=" connectionId " pulumi-lang-dotnet=" ConnectionId " pulumi-lang-go=" connectionId " pulumi-lang-python=" connection_id " pulumi-lang-yaml=" connectionId " pulumi-lang-java=" connectionId "> connection_id </span>can have the form "&lt;project\_id&gt;.&lt;location\_id&gt;.&lt;connection\_id&gt;" or "projects/&lt;project\_id&gt;/locations/&lt;location\_id&gt;/connections/&lt;connection\_id&gt;".
  final String connectionId;

  /// The file format the data is stored in.
  final String fileFormat;

  /// The fully qualified location prefix of the external folder where table data is stored. The '*' wildcard character is not allowed. The URI should be in the format "gs://bucket/path_to_table/"
  final String storageUri;

  /// The table format the metadata only snapshots are stored in.
  final String tableFormat;

  GetTableBiglakeConfiguration({
    required this.connectionId,
    required this.fileFormat,
    required this.storageUri,
    required this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['fileFormat'] = fileFormat;
    map['storageUri'] = storageUri;
    map['tableFormat'] = tableFormat;
    return map;
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
