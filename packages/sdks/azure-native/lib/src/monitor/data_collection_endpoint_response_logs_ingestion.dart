// ignore_for_file: unused_element, unnecessary_cast


/// The endpoint used by clients to ingest logs.
class DataCollectionEndpointResponseLogsIngestion {
  /// The endpoint. This property is READ-ONLY.
  final String endpoint;

  /// Creates a new [DataCollectionEndpointResponseLogsIngestion].
  /// [endpoint] The endpoint. This property is READ-ONLY.
  DataCollectionEndpointResponseLogsIngestion({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory DataCollectionEndpointResponseLogsIngestion.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointResponseLogsIngestion(
      endpoint: map['endpoint'] as String,
    );
  }
}

