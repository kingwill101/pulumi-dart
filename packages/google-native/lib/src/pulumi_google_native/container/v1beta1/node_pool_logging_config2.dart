// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config2.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfig2 {
  /// Logging variant configuration.
  final LoggingVariantConfig2? variantConfig;

  NodePoolLoggingConfig2({
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

  factory NodePoolLoggingConfig2.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfig2(
      variantConfig: map['variantConfig'] == null
          ? null
          : LoggingVariantConfig2.fromMap(
              (map['variantConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
