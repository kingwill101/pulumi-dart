import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownSyslogDataSourceFacilityNames implements pulumi.PulumiEnum<String> {
  valueAlert("alert"),
  valueAudit("audit"),
  valueAuth("auth"),
  valueAuthpriv("authpriv"),
  valueClock("clock"),
  valueCron("cron"),
  valueDaemon("daemon"),
  valueFtp("ftp"),
  valueKern("kern"),
  valueLpr("lpr"),
  valueMail("mail"),
  valueMark("mark"),
  valueNews("news"),
  valueNopri("nopri"),
  valueNtp("ntp"),
  valueSyslog("syslog"),
  valueUser("user"),
  valueUucp("uucp"),
  valueLocal0("local0"),
  valueLocal1("local1"),
  valueLocal2("local2"),
  valueLocal3("local3"),
  valueLocal4("local4"),
  valueLocal5("local5"),
  valueLocal6("local6"),
  valueLocal7("local7"),
  value("*");

  const KnownSyslogDataSourceFacilityNames(this.wireValue);
  @override
  final String wireValue;

  static KnownSyslogDataSourceFacilityNames fromValue(String value) {
    for (final item in KnownSyslogDataSourceFacilityNames.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceFacilityNames value: $value');
  }
}
