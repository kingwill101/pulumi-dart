// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_response2.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigResponse2 {
  /// Logging variant configuration.
  final LoggingVariantConfigResponse2 variantConfig;

  NodePoolLoggingConfigResponse2({
    required this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variantConfig'] = variantConfig.toMap();
    return map;
  }

  factory NodePoolLoggingConfigResponse2.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfigResponse2(
      variantConfig: LoggingVariantConfigResponse2.fromMap(
          (map['variantConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
