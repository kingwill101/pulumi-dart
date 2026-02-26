// ignore_for_file: unused_element, unnecessary_cast

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigResponse2 {
  /// Logging variant deployed on nodes.
  final String variant;

  LoggingVariantConfigResponse2({
    required this.variant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variant'] = variant;
    return map;
  }

  factory LoggingVariantConfigResponse2.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfigResponse2(
      variant: map['variant'] as String,
    );
  }
}
