// ignore_for_file: unused_element, unnecessary_cast


/// The properties of tracking data store.
class TrackingDataStoreResponse {
  /// The data store ingestion URI.
  final String? dataStoreIngestionUri;
  /// The data store resource id.
  final String? dataStoreResourceId;
  /// The data store URI.
  final String? dataStoreUri;
  /// The database name.
  final String? databaseName;

  /// Creates a new [TrackingDataStoreResponse].
  /// [dataStoreIngestionUri] The data store ingestion URI.
  /// [dataStoreResourceId] The data store resource id.
  /// [dataStoreUri] The data store URI.
  /// [databaseName] The database name.
  TrackingDataStoreResponse({
    this.dataStoreIngestionUri,
    this.dataStoreResourceId,
    this.dataStoreUri,
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreIngestionUri': ?dataStoreIngestionUri,
      'dataStoreResourceId': ?dataStoreResourceId,
      'dataStoreUri': ?dataStoreUri,
      'databaseName': ?databaseName,
    };
  }

  factory TrackingDataStoreResponse.fromMap(Map<String, dynamic> map) {
    return TrackingDataStoreResponse(
      dataStoreIngestionUri: map['dataStoreIngestionUri'] == null ? null : map['dataStoreIngestionUri'] as String,
      dataStoreResourceId: map['dataStoreResourceId'] == null ? null : map['dataStoreResourceId'] as String,
      dataStoreUri: map['dataStoreUri'] == null ? null : map['dataStoreUri'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
    );
  }
}

