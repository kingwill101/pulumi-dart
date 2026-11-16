// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_specification_container_container_metrics_config_metrics_endpoint.dart';

class InferenceComponentSpecificationContainerContainerMetricsConfig {
  /// Metrics endpoint configuration. See `metricsEndpoint` Block.
  final pulumi.Input<InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint?>? metricsEndpoint;

  /// Creates a new [InferenceComponentSpecificationContainerContainerMetricsConfig].
  /// [metricsEndpoint] Metrics endpoint configuration. See `metricsEndpoint` Block.
  const InferenceComponentSpecificationContainerContainerMetricsConfig({
    this.metricsEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsEndpoint': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint, Map<String, dynamic>>(metricsEndpoint, (value) => value.toMap()),
    };
  }

  factory InferenceComponentSpecificationContainerContainerMetricsConfig.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationContainerContainerMetricsConfig(
      metricsEndpoint: (() { final guardedValue = map['metricsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
