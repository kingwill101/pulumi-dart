// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessEndpointStatus.
class GetServerlessEndpointStatusResult {
  /// The model-specific metrics from the backing inference endpoint.
  final Map<String, String> metrics;

  /// Creates a new [GetServerlessEndpointStatusResult].
  /// [metrics] The model-specific metrics from the backing inference endpoint.
  const GetServerlessEndpointStatusResult({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': metrics,
    };
  }

  factory GetServerlessEndpointStatusResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessEndpointStatusResult(
      metrics: (map['metrics'] as Map).cast<String, String>(),
    );
  }
}
