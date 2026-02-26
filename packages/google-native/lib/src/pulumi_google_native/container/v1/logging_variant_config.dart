// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_variant.dart';

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfig {
  /// Logging variant deployed on nodes.
  final LoggingVariantConfigVariant? variant;

  LoggingVariantConfig({
    this.variant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final variantValue = variant;
    if (variantValue != null) {
      map['variant'] = variantValue.value;
    }
    return map;
  }

  factory LoggingVariantConfig.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfig(
      variant: map['variant'] == null
          ? null
          : LoggingVariantConfigVariant.fromValue(map['variant'] as String),
    );
  }
}
