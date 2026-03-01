/// Whether to use dynamic compression for cached content
enum DynamicCompressionEnabled {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DynamicCompressionEnabled(this.value);
  final String value;

  static DynamicCompressionEnabled fromValue(String value) {
    for (final item in DynamicCompressionEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicCompressionEnabled value: $value');
  }
}

