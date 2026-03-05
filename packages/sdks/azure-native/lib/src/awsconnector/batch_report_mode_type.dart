/// Property value
enum BatchReportModeType {
  rEPORTAGGREGATEDBATCH("REPORT_AGGREGATED_BATCH"),
  rEPORTINDIVIDUALBUILDS("REPORT_INDIVIDUAL_BUILDS");

  const BatchReportModeType(this.wireValue);
  final String wireValue;

  static BatchReportModeType fromValue(String value) {
    for (final item in BatchReportModeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchReportModeType value: $value');
  }
}

