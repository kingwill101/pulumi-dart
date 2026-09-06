import 'package:pulumi/pulumi.dart' as pulumi;

/// Log level for DNS queries in localDNS.
enum LocalDNSQueryLogging implements pulumi.PulumiEnum<String> {
  valueError("Error"),
  valueLog("Log");

  const LocalDNSQueryLogging(this.wireValue);
  @override
  final String wireValue;

  static LocalDNSQueryLogging fromValue(String value) {
    for (final item in LocalDNSQueryLogging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSQueryLogging value: $value');
  }
}
