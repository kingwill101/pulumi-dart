/// Property value
enum BatchReportModeType {
  rEPORTAGGREGATEDBATCH("REPORT_AGGREGATED_BATCH"),
  rEPORTINDIVIDUALBUILDS("REPORT_INDIVIDUAL_BUILDS");

  const BatchReportModeType(this.value);
  final String value;

  static BatchReportModeType fromValue(String value) {
    for (final item in BatchReportModeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchReportModeType value: $value');
  }
}

