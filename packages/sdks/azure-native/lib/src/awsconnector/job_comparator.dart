/// Property value
enum JobComparator {
  cONTAINS("CONTAINS"),
  eQ("EQ"),
  gT("GT"),
  gTE("GTE"),
  lT("LT"),
  lTE("LTE"),
  nE("NE"),
  sTARTSWITH("STARTS_WITH");

  const JobComparator(this.wireValue);
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

