// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'non_compliant_file2.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence2 {
  /// The reason for non compliance of these files.
  final String? nonComplianceReason;

  /// A list of files which are violating compliance checks.
  final List<NonCompliantFile2>? nonCompliantFiles;

  ComplianceOccurrence2({
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
          Input.encodeList<NonCompliantFile2, Map<String, dynamic>>(
              nonCompliantFilesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComplianceOccurrence2.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrence2(
      nonComplianceReason: map['nonComplianceReason'] == null
          ? null
          : map['nonComplianceReason'] as String,
      nonCompliantFiles: map['nonCompliantFiles'] == null
          ? null
          : Input.decodeList<NonCompliantFile2>(
              map['nonCompliantFiles'],
              (value) => NonCompliantFile2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
