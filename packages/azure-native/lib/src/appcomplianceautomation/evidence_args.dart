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
    String? controlId,
    String? evidenceName,
    String? evidenceType,
    String? extraData,
    required String filePath,
    String? offerGuid,
    String? reportCreatorTenantId,
    required String reportName,
    String? responsibilityId,
  }) :
      controlId = pulumi.Input.asOptionalInput<String>(controlId),
      evidenceName = pulumi.Input.asOptionalInput<String>(evidenceName),
      evidenceType = pulumi.Input.asOptionalInput<String>(evidenceType),
      extraData = pulumi.Input.asOptionalInput<String>(extraData),
      filePath = pulumi.Input.asInput<String>(filePath),
      offerGuid = pulumi.Input.asOptionalInput<String>(offerGuid),
      reportCreatorTenantId = pulumi.Input.asOptionalInput<String>(reportCreatorTenantId),
      reportName = pulumi.Input.asInput<String>(reportName),
      responsibilityId = pulumi.Input.asOptionalInput<String>(responsibilityId);

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
      controlId: map['controlId'] == null ? null : map['controlId'] as String,
      evidenceName: map['evidenceName'] == null ? null : map['evidenceName'] as String,
      evidenceType: map['evidenceType'] == null ? null : map['evidenceType'] as String,
      extraData: map['extraData'] == null ? null : map['extraData'] as String,
      filePath: map['filePath'] as String,
      offerGuid: map['offerGuid'] == null ? null : map['offerGuid'] as String,
      reportCreatorTenantId: map['reportCreatorTenantId'] == null ? null : map['reportCreatorTenantId'] as String,
      reportName: map['reportName'] as String,
      responsibilityId: map['responsibilityId'] == null ? null : map['responsibilityId'] as String,
    );
  }
}

