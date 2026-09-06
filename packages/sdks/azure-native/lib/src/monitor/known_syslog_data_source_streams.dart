import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownSyslogDataSourceStreams implements pulumi.PulumiEnum<String> {
  valueMicrosoftSyslog("Microsoft-Syslog");

  const KnownSyslogDataSourceStreams(this.wireValue);
  @override
  final String wireValue;

  static KnownSyslogDataSourceStreams fromValue(String value) {
    for (final item in KnownSyslogDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceStreams value: $value');
  }
}
