// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportPlanReportSetting {
  /// Specifies the list of accounts a report covers.
  final pulumi.Input<List<String>>? accounts;
  /// Specifies the Amazon Resource Names (ARNs) of the frameworks a report covers.
  final pulumi.Input<List<String>>? frameworkArns;
  /// Specifies the number of frameworks a report covers.
  final pulumi.Input<int>? numberOfFrameworks;
  /// Specifies the list of Organizational Units a report covers.
  final pulumi.Input<List<String>>? organizationUnits;
  /// Specifies the list of regions a report covers.
  final pulumi.Input<List<String>>? regions;
  /// Identifies the report template for the report. Reports are built using a report template. The report templates are: `RESOURCE_COMPLIANCE_REPORT` | `CONTROL_COMPLIANCE_REPORT` | `BACKUP_JOB_REPORT` | `COPY_JOB_REPORT` | `RESTORE_JOB_REPORT`.
  final pulumi.Input<String> reportTemplate;

  /// Creates a new [ReportPlanReportSetting].
  /// [accounts] Specifies the list of accounts a report covers.
  /// [frameworkArns] Specifies the Amazon Resource Names (ARNs) of the frameworks a report covers.
  /// [numberOfFrameworks] Specifies the number of frameworks a report covers.
  /// [organizationUnits] Specifies the list of Organizational Units a report covers.
  /// [regions] Specifies the list of regions a report covers.
  /// [reportTemplate] Identifies the report template for the report. Reports are built using a report template. The report templates are: `RESOURCE_COMPLIANCE_REPORT` | `CONTROL_COMPLIANCE_REPORT` | `BACKUP_JOB_REPORT` | `COPY_JOB_REPORT` | `RESTORE_JOB_REPORT`.
  ReportPlanReportSetting({
    this.accounts,
    this.frameworkArns,
    this.numberOfFrameworks,
    this.organizationUnits,
    this.regions,
    required this.reportTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'frameworkArns': ?frameworkArns,
      'numberOfFrameworks': ?numberOfFrameworks,
      'organizationUnits': ?organizationUnits,
      'regions': ?regions,
      'reportTemplate': reportTemplate,
    };
  }

  factory ReportPlanReportSetting.fromMap(Map<String, dynamic> map) {
    return ReportPlanReportSetting(
      accounts: map['accounts'] == null ? null : ((map['accounts'] as List).cast<String>()).input(),
      frameworkArns: map['frameworkArns'] == null ? null : ((map['frameworkArns'] as List).cast<String>()).input(),
      numberOfFrameworks: map['numberOfFrameworks'] == null ? null : (map['numberOfFrameworks'] as int).input(),
      organizationUnits: map['organizationUnits'] == null ? null : ((map['organizationUnits'] as List).cast<String>()).input(),
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      reportTemplate: (map['reportTemplate'] as String).input(),
    );
  }
}

