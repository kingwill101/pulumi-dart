// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_evidence_args_doc}
/// The set of arguments for Evidence.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_evidence_args_doc}
class EvidenceArgs {
  /// Control id.
  final pulumi.Input<String>? controlId;
  /// The evidence name.
  final pulumi.Input<String>? evidenceName;
  /// Evidence type.
  final pulumi.Input<String>? evidenceType;
  /// Extra data considered as evidence.
  final pulumi.Input<String>? extraData;
  /// The path of the file in storage.
  final pulumi.Input<String> filePath;
  /// The offerGuid which mapping to the reports.
  final pulumi.Input<String>? offerGuid;
  /// The tenant id of the report creator.
  final pulumi.Input<String>? reportCreatorTenantId;
  /// Report Name.
  final pulumi.Input<String> reportName;
  /// Responsibility id.
  final pulumi.Input<String>? responsibilityId;

  /// Creates a new [EvidenceArgs].
  /// [controlId] Control id.
  /// [evidenceName] The evidence name.
  /// [evidenceType] Evidence type.
  /// [extraData] Extra data considered as evidence.
  /// [filePath] The path of the file in storage.
  /// [offerGuid] The offerGuid which mapping to the reports.
  /// [reportCreatorTenantId] The tenant id of the report creator.
  /// [reportName] Report Name.
  /// [responsibilityId] Responsibility id.
  EvidenceArgs({
    this.controlId,
    this.evidenceName,
    this.evidenceType,
    this.extraData,
    required this.filePath,
    this.offerGuid,
    this.reportCreatorTenantId,
    required this.reportName,
    this.responsibilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlId': ?controlId,
      'evidenceName': ?evidenceName,
      'evidenceType': ?evidenceType,
      'extraData': ?extraData,
      'filePath': filePath,
      'offerGuid': ?offerGuid,
      'reportCreatorTenantId': ?reportCreatorTenantId,
      'reportName': reportName,
      'responsibilityId': ?responsibilityId,
    };
  }

  factory EvidenceArgs.fromMap(Map<String, dynamic> map) {
    return EvidenceArgs(
      controlId: map['controlId'] == null ? null : (map['controlId'] as String).input(),
      evidenceName: map['evidenceName'] == null ? null : (map['evidenceName'] as String).input(),
      evidenceType: map['evidenceType'] == null ? null : (map['evidenceType'] as String).input(),
      extraData: map['extraData'] == null ? null : (map['extraData'] as String).input(),
      filePath: (map['filePath'] as String).input(),
      offerGuid: map['offerGuid'] == null ? null : (map['offerGuid'] as String).input(),
      reportCreatorTenantId: map['reportCreatorTenantId'] == null ? null : (map['reportCreatorTenantId'] as String).input(),
      reportName: (map['reportName'] as String).input(),
      responsibilityId: map['responsibilityId'] == null ? null : (map['responsibilityId'] as String).input(),
    );
  }
}

