// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_evidence_args_doc}
/// Arguments for getEvidence.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_evidence_args_doc}
class GetEvidenceArgs {
  /// The evidence name.
  final pulumi.Input<String> evidenceName;
  /// Report Name.
  final pulumi.Input<String> reportName;

  /// Creates a new [GetEvidenceArgs].
  /// [evidenceName] The evidence name.
  /// [reportName] Report Name.
  GetEvidenceArgs({
    required this.evidenceName,
    required this.reportName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evidenceName': evidenceName,
      'reportName': reportName,
    };
  }

  factory GetEvidenceArgs.fromMap(Map<String, dynamic> map) {
    return GetEvidenceArgs(
      evidenceName: (map['evidenceName'] as String).input(),
      reportName: (map['reportName'] as String).input(),
    );
  }
}

