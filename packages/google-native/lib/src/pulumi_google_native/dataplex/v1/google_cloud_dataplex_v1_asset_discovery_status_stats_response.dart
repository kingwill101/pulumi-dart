// ignore_for_file: unused_element, unnecessary_cast

/// The aggregated data statistics for the asset reported by discovery.
class GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse {
  /// The count of data items within the referenced resource.
  final String dataItems;

  /// The number of stored data bytes within the referenced resource.
  final String dataSize;

  /// The count of fileset entities within the referenced resource.
  final String filesets;

  /// The count of table entities within the referenced resource.
  final String tables;

  GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse({
    required this.dataItems,
    required this.dataSize,
    required this.filesets,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataItems'] = dataItems;
    map['dataSize'] = dataSize;
    map['filesets'] = filesets;
    map['tables'] = tables;
    return map;
  }

  factory GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse(
      dataItems: map['dataItems'] as String,
      dataSize: map['dataSize'] as String,
      filesets: map['filesets'] as String,
      tables: map['tables'] as String,
    );
  }
}
