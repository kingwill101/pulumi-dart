// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_report_args_doc}
/// Arguments for getReport.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_report_args_doc}
class GetReportArgs {
  /// Report Name.
  final pulumi.Input<String> reportName;

  /// Creates a new [GetReportArgs].
  /// [reportName] Report Name.
  GetReportArgs({
    required pulumi.Output<String> reportName,
  }) :
      reportName = pulumi.Input.asInput<String>(reportName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
    };
  }

  factory GetReportArgs.fromMap(Map<String, dynamic> map) {
    return GetReportArgs(
      reportName: pulumi.Output.create<String>(map['reportName'] as String),
    );
  }
}

