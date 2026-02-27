// ignore_for_file: unused_element, unnecessary_cast

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigResponseContainerV1beta1 {
  /// Logging variant deployed on nodes.
  final String variant;

  LoggingVariantConfigResponseContainerV1beta1({
    required this.variant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variant'] = variant;
    return map;
  }

  factory LoggingVariantConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return LoggingVariantConfigResponseContainerV1beta1(
      variant: map['variant'] as String,
    );
  }
}
