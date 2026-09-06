import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum for setting log verbosity.
enum LogVerbosity implements pulumi.PulumiEnum<String> {
  notSet("NotSet"),
  debug("Debug"),
  info("Info"),
  warning("Warning"),
  error("Error"),
  critical("Critical");

  const LogVerbosity(this.wireValue);
  @override
  final String wireValue;

  static LogVerbosity fromValue(String value) {
    for (final item in LogVerbosity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogVerbosity value: $value');
  }
}
