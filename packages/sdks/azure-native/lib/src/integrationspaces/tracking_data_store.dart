// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of tracking data store.
class TrackingDataStore {
  /// The data store ingestion URI.
  final pulumi.Input<String>? dataStoreIngestionUri;
  /// The data store resource id.
  final pulumi.Input<String>? dataStoreResourceId;
  /// The data store URI.
  final pulumi.Input<String>? dataStoreUri;
  /// The database name.
  final pulumi.Input<String>? databaseName;

  /// Creates a new [TrackingDataStore].
  /// [dataStoreIngestionUri] The data store ingestion URI.
  /// [dataStoreResourceId] The data store resource id.
  /// [dataStoreUri] The data store URI.
  /// [databaseName] The database name.
  TrackingDataStore({
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

  factory TrackingDataStore.fromMap(Map<String, dynamic> map) {
    return TrackingDataStore(
      dataStoreIngestionUri: map['dataStoreIngestionUri'] == null ? null : (map['dataStoreIngestionUri']! as String).input(),
      dataStoreResourceId: map['dataStoreResourceId'] == null ? null : (map['dataStoreResourceId']! as String).input(),
      dataStoreUri: map['dataStoreUri'] == null ? null : (map['dataStoreUri']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
    );
  }
}

