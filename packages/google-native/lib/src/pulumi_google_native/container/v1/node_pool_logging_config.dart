// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfig {
  /// Logging variant configuration.
  final LoggingVariantConfig? variantConfig;

  NodePoolLoggingConfig({
    this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final variantConfigValue = variantConfig;
    if (variantConfigValue != null) {
      map['variantConfig'] = variantConfigValue.toMap();
    }
    return map;
  }

  factory NodePoolLoggingConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfig(
      variantConfig: map['variantConfig'] == null
          ? null
          : LoggingVariantConfig.fromMap(
              (map['variantConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
