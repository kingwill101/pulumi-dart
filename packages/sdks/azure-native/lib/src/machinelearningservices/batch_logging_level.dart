import 'package:pulumi/pulumi.dart' as pulumi;

/// Log verbosity for batch inferencing.
/// Increasing verbosity order for logging is : Warning, Info and Debug.
/// The default value is Info.
enum BatchLoggingLevel implements pulumi.PulumiEnum<String> {
  info("Info"),
  warning("Warning"),
  debug("Debug");

  const BatchLoggingLevel(this.wireValue);
  @override
  final String wireValue;

  static BatchLoggingLevel fromValue(String value) {
    for (final item in BatchLoggingLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchLoggingLevel value: $value');
  }
}
