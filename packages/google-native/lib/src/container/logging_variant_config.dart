// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_variant.dart';

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfig {
  /// Logging variant deployed on nodes.
  final LoggingVariantConfigVariant? variant;

  /// Creates a new [LoggingVariantConfig].
  /// [variant] Logging variant deployed on nodes.
  LoggingVariantConfig({this.variant});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': ?variant == null ? null : variant!.value,
    };
  }

  factory LoggingVariantConfig.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfig(
      variant: map['variant'] == null
          ? null
          : LoggingVariantConfigVariant.fromValue(map['variant'] as String),
    );
  }
}
