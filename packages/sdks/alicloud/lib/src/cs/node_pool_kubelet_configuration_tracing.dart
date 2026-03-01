// ignore_for_file: unused_element, unnecessary_cast


class NodePoolKubeletConfigurationTracing {
  /// The endpoint of the collector.
  final String? endpoint;
  /// Number of samples to be collected per million span.
  final String? samplingRatePerMillion;

  /// Creates a new [NodePoolKubeletConfigurationTracing].
  /// [endpoint] The endpoint of the collector.
  /// [samplingRatePerMillion] Number of samples to be collected per million span.
  NodePoolKubeletConfigurationTracing({
    this.endpoint,
    this.samplingRatePerMillion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'samplingRatePerMillion': ?samplingRatePerMillion,
    };
  }

  factory NodePoolKubeletConfigurationTracing.fromMap(Map<String, dynamic> map) {
    return NodePoolKubeletConfigurationTracing(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      samplingRatePerMillion: map['samplingRatePerMillion'] == null ? null : map['samplingRatePerMillion'] as String,
    );
  }
}

