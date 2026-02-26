/// Logging variant deployed on nodes.
enum LoggingVariantConfigVariant2 {
  variantUnspecified("VARIANT_UNSPECIFIED"),
  default_("DEFAULT"),
  maxThroughput("MAX_THROUGHPUT");

  const LoggingVariantConfigVariant2(this.value);
  final String value;

  static LoggingVariantConfigVariant2 fromValue(String value) {
    for (final item in LoggingVariantConfigVariant2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingVariantConfigVariant2 value: $value');
  }
}
