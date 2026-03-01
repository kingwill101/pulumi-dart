// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfig {
  /// Logging variant configuration.
  final LoggingVariantConfig? variantConfig;

  /// Creates a new [NodePoolLoggingConfig].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfig({this.variantConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig': ?variantConfig == null ? null : variantConfig!.toMap(),
    };
  }

  factory NodePoolLoggingConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfig(
      variantConfig: map['variantConfig'] == null
          ? null
          : LoggingVariantConfig.fromMap(
              (map['variantConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
