// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReportPlanReportSetting {
  /// List of accounts a report covers.
  final pulumi.Input<List<String>> accounts;
  /// ARNs of the frameworks a report covers.
  final pulumi.Input<List<String>> frameworkArns;
  /// Number of frameworks a report covers.
  final pulumi.Input<int> numberOfFrameworks;
  /// List of Organizational Units a report covers.
  final pulumi.Input<List<String>> organizationUnits;
  /// List of regions a report covers.
  final pulumi.Input<List<String>> regions;
  /// Report template for the report. Reports are built using a report template.
  final pulumi.Input<String> reportTemplate;

  /// Creates a new [GetReportPlanReportSetting].
  /// [accounts] List of accounts a report covers.
  /// [frameworkArns] ARNs of the frameworks a report covers.
  /// [numberOfFrameworks] Number of frameworks a report covers.
  /// [organizationUnits] List of Organizational Units a report covers.
  /// [regions] List of regions a report covers.
  /// [reportTemplate] Report template for the report. Reports are built using a report template.
  const GetReportPlanReportSetting({
    required this.accounts,
    required this.frameworkArns,
    required this.numberOfFrameworks,
    required this.organizationUnits,
    required this.regions,
    required this.reportTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': accounts,
      'frameworkArns': frameworkArns,
      'numberOfFrameworks': numberOfFrameworks,
      'organizationUnits': organizationUnits,
      'regions': regions,
      'reportTemplate': reportTemplate,
    };
  }

  factory GetReportPlanReportSetting.fromMap(Map<String, dynamic> map) {
    return GetReportPlanReportSetting(
      accounts: pulumi.Input.fromValue((map['accounts'] as List).cast<String>()),
      frameworkArns: pulumi.Input.fromValue((map['frameworkArns'] as List).cast<String>()),
      numberOfFrameworks: pulumi.Input.fromValue(map['numberOfFrameworks'] as int),
      organizationUnits: pulumi.Input.fromValue((map['organizationUnits'] as List).cast<String>()),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      reportTemplate: pulumi.Input.fromValue(map['reportTemplate'] as String),
    );
  }
}
