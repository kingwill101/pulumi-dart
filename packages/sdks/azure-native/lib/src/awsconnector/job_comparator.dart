import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum JobComparator implements pulumi.PulumiEnum<String> {
  cONTAINS("CONTAINS"),
  eQ("EQ"),
  gT("GT"),
  gTE("GTE"),
  lT("LT"),
  lTE("LTE"),
  nE("NE"),
  sTARTSWITH("STARTS_WITH");

  const JobComparator(this.wireValue);
  @override
  final String wireValue;

  static JobComparator fromValue(String value) {
    for (final item in JobComparator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobComparator value: $value');
  }
}
