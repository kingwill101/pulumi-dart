// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint used by clients to ingest metrics.
class DataCollectionEndpointResponseMetricsIngestion {
  /// The endpoint. This property is READ-ONLY.
  final pulumi.Input<String> endpoint;

  /// Creates a new [DataCollectionEndpointResponseMetricsIngestion].
  /// [endpoint] The endpoint. This property is READ-ONLY.
  DataCollectionEndpointResponseMetricsIngestion({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory DataCollectionEndpointResponseMetricsIngestion.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointResponseMetricsIngestion(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

