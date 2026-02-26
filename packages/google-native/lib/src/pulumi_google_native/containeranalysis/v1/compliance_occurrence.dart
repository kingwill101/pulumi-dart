// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'non_compliant_file.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence {
  final String? nonComplianceReason;
  final List<NonCompliantFile>? nonCompliantFiles;

  ComplianceOccurrence({
    this.nonComplianceReason,
    this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nonComplianceReasonValue = nonComplianceReason;
    if (nonComplianceReasonValue != null) {
      map['nonComplianceReason'] = nonComplianceReasonValue;
    }
    final nonCompliantFilesValue = nonCompliantFiles;
    if (nonCompliantFilesValue != null) {
      map['nonCompliantFiles'] =
          Input.encodeList<NonCompliantFile, Map<String, dynamic>>(
              nonCompliantFilesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComplianceOccurrence.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrence(
      nonComplianceReason: map['nonComplianceReason'] == null
          ? null
          : map['nonComplianceReason'] as String,
      nonCompliantFiles: map['nonCompliantFiles'] == null
          ? null
          : Input.decodeList<NonCompliantFile>(
              map['nonCompliantFiles'],
              (value) => NonCompliantFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
