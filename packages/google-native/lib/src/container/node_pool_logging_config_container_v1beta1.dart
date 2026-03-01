// ignore_for_file: unused_element, unnecessary_cast

import 'logging_variant_config_container_v1beta1.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigContainerV1beta1 {
  /// Logging variant configuration.
  final LoggingVariantConfigContainerV1beta1? variantConfig;

  /// Creates a new [NodePoolLoggingConfigContainerV1beta1].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfigContainerV1beta1({this.variantConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig': ?variantConfig == null ? null : variantConfig!.toMap(),
    };
  }

  factory NodePoolLoggingConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolLoggingConfigContainerV1beta1(
      variantConfig: map['variantConfig'] == null
          ? null
          : LoggingVariantConfigContainerV1beta1.fromMap(
              (map['variantConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
