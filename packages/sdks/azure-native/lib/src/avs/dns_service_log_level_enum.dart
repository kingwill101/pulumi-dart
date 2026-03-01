/// DNS Service log level.
enum DnsServiceLogLevelEnum {
  dEBUG("DEBUG"),
  iNFO("INFO"),
  wARNING("WARNING"),
  eRROR("ERROR"),
  fATAL("FATAL");

  const DnsServiceLogLevelEnum(this.value);
  final String value;

  static DnsServiceLogLevelEnum fromValue(String value) {
    for (final item in DnsServiceLogLevelEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsServiceLogLevelEnum value: $value');
  }
}

