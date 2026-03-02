// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of tracking data store.
class TrackingDataStoreResponse {
  /// The data store ingestion URI.
  final pulumi.Input<String>? dataStoreIngestionUri;
  /// The data store resource id.
  final pulumi.Input<String>? dataStoreResourceId;
  /// The data store URI.
  final pulumi.Input<String>? dataStoreUri;
  /// The database name.
  final pulumi.Input<String>? databaseName;

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
      dataStoreIngestionUri: map['dataStoreIngestionUri'] == null ? null : (map['dataStoreIngestionUri'] as String).input(),
      dataStoreResourceId: map['dataStoreResourceId'] == null ? null : (map['dataStoreResourceId'] as String).input(),
      dataStoreUri: map['dataStoreUri'] == null ? null : (map['dataStoreUri'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
    );
  }
}

