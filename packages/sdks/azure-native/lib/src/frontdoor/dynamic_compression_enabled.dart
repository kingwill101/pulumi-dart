import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to use dynamic compression for cached content
enum DynamicCompressionEnabled implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const DynamicCompressionEnabled(this.wireValue);
  @override
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
