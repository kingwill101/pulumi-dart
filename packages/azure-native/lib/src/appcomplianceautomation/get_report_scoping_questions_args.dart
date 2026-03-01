// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_report_scoping_questions_args_doc}
/// Arguments for getReportScopingQuestions.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_report_scoping_questions_args_doc}
class GetReportScopingQuestionsArgs {
  /// Report Name.
  final pulumi.Input<String> reportName;

  /// Creates a new [GetReportScopingQuestionsArgs].
  /// [reportName] Report Name.
  GetReportScopingQuestionsArgs({
    required String reportName,
  }) :
      reportName = pulumi.Input.asInput<String>(reportName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
    };
  }

  factory GetReportScopingQuestionsArgs.fromMap(Map<String, dynamic> map) {
    return GetReportScopingQuestionsArgs(
      reportName: map['reportName'] as String,
    );
  }
}

