// ignore_for_file: unused_element, unnecessary_cast


/// The endpoint used by clients to ingest metrics.
class DataCollectionEndpointResponseMetricsIngestion {
  /// The endpoint. This property is READ-ONLY.
  final String endpoint;

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
      endpoint: map['endpoint'] as String,
    );
  }
}

