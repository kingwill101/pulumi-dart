// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing {
  /// The endpoint of the collector.
  final String endpoint;
  /// Number of samples to be collected per million span.
  final String samplingRatePerMillion;

  /// Creates a new [GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing].
  /// [endpoint] The endpoint of the collector.
  /// [samplingRatePerMillion] Number of samples to be collected per million span.
  GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing({
    required this.endpoint,
    required this.samplingRatePerMillion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'samplingRatePerMillion': samplingRatePerMillion,
    };
  }

  factory GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing(
      endpoint: map['endpoint'] as String,
      samplingRatePerMillion: map['samplingRatePerMillion'] as String,
    );
  }
}

