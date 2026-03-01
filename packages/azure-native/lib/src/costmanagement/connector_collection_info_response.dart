// ignore_for_file: unused_element, unnecessary_cast

import 'connector_collection_error_info_response.dart';

/// Collection and ingestion information
class ConnectorCollectionInfoResponse {
  /// Error information of last collection
  final ConnectorCollectionErrorInfoResponse? error;
  /// Last time the data acquisition process initiated connecting to the external provider
  final String? lastChecked;
  /// Last time the data acquisition process completed (even if no new data was found)
  final String lastRun;
  /// Last time the external data was updated into Azure
  final String lastUpdated;
  /// Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  final String sourceLastUpdated;

  /// Creates a new [ConnectorCollectionInfoResponse].
  /// [error] Error information of last collection
  /// [lastChecked] Last time the data acquisition process initiated connecting to the external provider
  /// [lastRun] Last time the data acquisition process completed (even if no new data was found)
  /// [lastUpdated] Last time the external data was updated into Azure
  /// [sourceLastUpdated] Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  ConnectorCollectionInfoResponse({
    this.error,
    this.lastChecked,
    required this.lastRun,
    required this.lastUpdated,
    required this.sourceLastUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'lastChecked': ?lastChecked,
      'lastRun': lastRun,
      'lastUpdated': lastUpdated,
      'sourceLastUpdated': sourceLastUpdated,
    };
  }

  factory ConnectorCollectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorCollectionInfoResponse(
      error: map['error'] == null ? null : ConnectorCollectionErrorInfoResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      lastChecked: map['lastChecked'] == null ? null : map['lastChecked'] as String,
      lastRun: map['lastRun'] as String,
      lastUpdated: map['lastUpdated'] as String,
      sourceLastUpdated: map['sourceLastUpdated'] as String,
    );
  }
}

