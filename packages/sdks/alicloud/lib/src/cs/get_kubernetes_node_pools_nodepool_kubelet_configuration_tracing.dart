// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing {
  /// The endpoint of the collector.
  final pulumi.Input<String> endpoint;
  /// Number of samples to be collected per million span.
  final pulumi.Input<String> samplingRatePerMillion;

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
      endpoint: (map['endpoint'] as String).input(),
      samplingRatePerMillion: (map['samplingRatePerMillion'] as String).input(),
    );
  }
}

