// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint used by clients to ingest logs.
class DataCollectionEndpointResponseLogsIngestion {
  /// The endpoint. This property is READ-ONLY.
  final pulumi.Input<String> endpoint;

  /// Creates a new [DataCollectionEndpointResponseLogsIngestion].
  /// [endpoint] The endpoint. This property is READ-ONLY.
  DataCollectionEndpointResponseLogsIngestion({required this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpoint': endpoint};
  }

  factory DataCollectionEndpointResponseLogsIngestion.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionEndpointResponseLogsIngestion(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
