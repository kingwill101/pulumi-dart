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
  const GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing({
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
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      samplingRatePerMillion: pulumi.Input.fromValue(map['samplingRatePerMillion'] as String),
    );
  }
}

