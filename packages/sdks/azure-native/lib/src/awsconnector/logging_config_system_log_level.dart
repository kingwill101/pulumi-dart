import 'package:pulumi/pulumi.dart' as pulumi;

/// Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
enum LoggingConfigSystemLogLevel implements pulumi.PulumiEnum<String> {
  dEBUG("DEBUG"),
  iNFO("INFO"),
  wARN("WARN");

  const LoggingConfigSystemLogLevel(this.wireValue);
  @override
  final String wireValue;

  static LoggingConfigSystemLogLevel fromValue(String value) {
    for (final item in LoggingConfigSystemLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigSystemLogLevel value: $value');
  }
}
