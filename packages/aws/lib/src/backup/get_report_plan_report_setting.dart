// ignore_for_file: unused_element, unnecessary_cast

class GetReportPlanReportSetting {
  /// (Optional) Specifies the list of accounts a report covers.
  final List<String> accounts;

  /// ARNs of the frameworks a report covers.
  final List<String> frameworkArns;

  /// Specifies the number of frameworks a report covers.
  final int numberOfFrameworks;

  /// (Optional) Specifies the list of Organizational Units a report covers.
  final List<String> organizationUnits;

  /// (Optional) Specifies the list of regions a report covers.
  final List<String> regions;

  /// Identifies the report template for the report. Reports are built using a report template.
  final String reportTemplate;

  /// Creates a new [GetReportPlanReportSetting].
  /// [accounts] (Optional) Specifies the list of accounts a report covers.
  /// [frameworkArns] ARNs of the frameworks a report covers.
  /// [numberOfFrameworks] Specifies the number of frameworks a report covers.
  /// [organizationUnits] (Optional) Specifies the list of Organizational Units a report covers.
  /// [regions] (Optional) Specifies the list of regions a report covers.
  /// [reportTemplate] Identifies the report template for the report. Reports are built using a report template.
  GetReportPlanReportSetting({
    required this.accounts,
    required this.frameworkArns,
    required this.numberOfFrameworks,
    required this.organizationUnits,
    required this.regions,
    required this.reportTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accounts'] = accounts;
    map['frameworkArns'] = frameworkArns;
    map['numberOfFrameworks'] = numberOfFrameworks;
    map['organizationUnits'] = organizationUnits;
    map['regions'] = regions;
    map['reportTemplate'] = reportTemplate;
    return map;
  }

  factory GetReportPlanReportSetting.fromMap(Map<String, dynamic> map) {
    return GetReportPlanReportSetting(
      accounts: (map['accounts'] as List).cast<String>(),
      frameworkArns: (map['frameworkArns'] as List).cast<String>(),
      numberOfFrameworks: map['numberOfFrameworks'] as int,
      organizationUnits: (map['organizationUnits'] as List).cast<String>(),
      regions: (map['regions'] as List).cast<String>(),
      reportTemplate: map['reportTemplate'] as String,
    );
  }
}
