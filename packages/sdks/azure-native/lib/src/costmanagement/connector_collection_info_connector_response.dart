// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_collection_error_info_connector_response.dart';

/// Collection and ingestion information
class ConnectorCollectionInfoConnectorResponse {
  /// Error information of last collection
  final pulumi.Input<ConnectorCollectionErrorInfoConnectorResponse?>? error;
  /// Last time the data acquisition process completed (even if no new data was found)
  final pulumi.Input<String> lastRun;
  /// Last time the external data was updated into Azure
  final pulumi.Input<String> lastUpdated;
  /// Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  final pulumi.Input<String> sourceLastUpdated;

  /// Creates a new [ConnectorCollectionInfoConnectorResponse].
  /// [error] Error information of last collection
  /// [lastRun] Last time the data acquisition process completed (even if no new data was found)
  /// [lastUpdated] Last time the external data was updated into Azure
  /// [sourceLastUpdated] Source timestamp of external data currently available in Azure (eg AWS last processed CUR file timestamp)
  const ConnectorCollectionInfoConnectorResponse({
    this.error,
    required this.lastRun,
    required this.lastUpdated,
    required this.sourceLastUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ConnectorCollectionErrorInfoConnectorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'lastRun': lastRun,
      'lastUpdated': lastUpdated,
      'sourceLastUpdated': sourceLastUpdated,
    };
  }

  factory ConnectorCollectionInfoConnectorResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorCollectionInfoConnectorResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorCollectionErrorInfoConnectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastRun: pulumi.Input.fromValue(map['lastRun'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      sourceLastUpdated: pulumi.Input.fromValue(map['sourceLastUpdated'] as String),
    );
  }
}
