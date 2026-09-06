import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol to use for health probe.
enum ProbeProtocol implements pulumi.PulumiEnum<String> {
  valueNotSet("NotSet"),
  valueHttp("Http"),
  valueHttps("Https");

  const ProbeProtocol(this.wireValue);
  @override
  final String wireValue;

  static ProbeProtocol fromValue(String value) {
    for (final item in ProbeProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeProtocol value: $value');
  }
}
