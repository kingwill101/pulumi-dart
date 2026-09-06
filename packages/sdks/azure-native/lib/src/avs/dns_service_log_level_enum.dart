import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS Service log level.
enum DnsServiceLogLevelEnum implements pulumi.PulumiEnum<String> {
  dEBUG("DEBUG"),
  iNFO("INFO"),
  wARNING("WARNING"),
  eRROR("ERROR"),
  fATAL("FATAL");

  const DnsServiceLogLevelEnum(this.wireValue);
  @override
  final String wireValue;

  static DnsServiceLogLevelEnum fromValue(String value) {
    for (final item in DnsServiceLogLevelEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsServiceLogLevelEnum value: $value');
  }
}
