// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_collection_error_info_response.dart';

/// Collection and ingestion information
class ConnectorCollectionInfoResponse {
  /// Error information of last collection
  final pulumi.Input<ConnectorCollectionErrorInfoResponse?>? error;
  /// Last time the data acquisition process initiated connecting to the external provider
  final pulumi.Input<String> lastChecked;
  /// Last time the external data was updated into Azure
  final pulumi.Input<String> lastUpdated;
  /// Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  final pulumi.Input<String> sourceLastUpdated;

  /// Creates a new [ConnectorCollectionInfoResponse].
  /// [error] Error information of last collection
  /// [lastChecked] Last time the data acquisition process initiated connecting to the external provider
  /// [lastUpdated] Last time the external data was updated into Azure
  /// [sourceLastUpdated] Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  const ConnectorCollectionInfoResponse({
    this.error,
    required this.lastChecked,
    required this.lastUpdated,
    required this.sourceLastUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ConnectorCollectionErrorInfoResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'lastChecked': lastChecked,
      'lastUpdated': lastUpdated,
      'sourceLastUpdated': sourceLastUpdated,
    };
  }

  factory ConnectorCollectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorCollectionInfoResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorCollectionErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastChecked: pulumi.Input.fromValue(map['lastChecked'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      sourceLastUpdated: pulumi.Input.fromValue(map['sourceLastUpdated'] as String),
    );
  }
}
