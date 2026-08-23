/// Whether to use dynamic compression for cached content
enum DynamicCompressionEnabled {
  enabled("Enabled"),
  disabled("Disabled");

  const DynamicCompressionEnabled(this.wireValue);
  final String wireValue;

  static DynamicCompressionEnabled fromValue(String value) {
    for (final item in DynamicCompressionEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicCompressionEnabled value: $value');
  }
}
