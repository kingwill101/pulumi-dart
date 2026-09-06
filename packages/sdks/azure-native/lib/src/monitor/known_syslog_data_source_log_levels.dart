import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownSyslogDataSourceLogLevels implements pulumi.PulumiEnum<String> {
  valueDebug("Debug"),
  valueInfo("Info"),
  valueNotice("Notice"),
  valueWarning("Warning"),
  valueError("Error"),
  valueCritical("Critical"),
  valueAlert("Alert"),
  valueEmergency("Emergency"),
  value("*");

  const KnownSyslogDataSourceLogLevels(this.wireValue);
  @override
  final String wireValue;

  static KnownSyslogDataSourceLogLevels fromValue(String value) {
    for (final item in KnownSyslogDataSourceLogLevels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceLogLevels value: $value');
  }
}
