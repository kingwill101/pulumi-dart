// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_response_container_v1beta1.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigResponseContainerV1beta1 {
  /// Logging variant configuration.
  final LoggingVariantConfigResponseContainerV1beta1 variantConfig;

  /// Creates a new [NodePoolLoggingConfigResponseContainerV1beta1].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfigResponseContainerV1beta1({
    required this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variantConfig'] = variantConfig.toMap();
    return map;
  }

  factory NodePoolLoggingConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NodePoolLoggingConfigResponseContainerV1beta1(
      variantConfig: LoggingVariantConfigResponseContainerV1beta1.fromMap(
          (map['variantConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
