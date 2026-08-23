/// One of the supported timestamp formats
enum KnownLogFileTextSettingsRecordStartTimestampFormat {
  valueISO8601("ISO 8601"),
  valueYYYYMMDDHHMMSS("YYYY-MM-DD HH:MM:SS"),
  valueMDYYYYHHMMSSAMPM("M/D/YYYY HH:MM:SS AM/PM"),
  valueMonDDYYYYHHMMSS("Mon DD, YYYY HH:MM:SS"),
  valueYyMMddHHMmSs("yyMMdd HH:mm:ss"),
  valueDdMMyyHHMmSs("ddMMyy HH:mm:ss"),
  valueMMMDHhMmSs("MMM d hh:mm:ss"),
  valueDdMMMYyyyHHMmSsZzz("dd/MMM/yyyy:HH:mm:ss zzz"),
  valueYyyyMMDdTHHMmSsK("yyyy-MM-ddTHH:mm:ssK");

  const KnownLogFileTextSettingsRecordStartTimestampFormat(this.wireValue);
  final String wireValue;

  static KnownLogFileTextSettingsRecordStartTimestampFormat fromValue(String value) {
    for (final item in KnownLogFileTextSettingsRecordStartTimestampFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownLogFileTextSettingsRecordStartTimestampFormat value: $value');
  }
}
