/// Logging variant deployed on nodes.
enum LoggingVariantConfigVariant {
  variantUnspecified("VARIANT_UNSPECIFIED"),
  default_("DEFAULT"),
  maxThroughput("MAX_THROUGHPUT");

  const LoggingVariantConfigVariant(this.value);
  final String value;

  static LoggingVariantConfigVariant fromValue(String value) {
    for (final item in LoggingVariantConfigVariant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingVariantConfigVariant value: $value');
  }
}
