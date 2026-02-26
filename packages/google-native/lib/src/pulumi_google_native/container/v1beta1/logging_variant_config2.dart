// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_variant2.dart';

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfig2 {
  /// Logging variant deployed on nodes.
  final LoggingVariantConfigVariant2? variant;

  LoggingVariantConfig2({
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

  factory LoggingVariantConfig2.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfig2(
      variant: map['variant'] == null
          ? null
          : LoggingVariantConfigVariant2.fromValue(map['variant'] as String),
    );
  }
}
