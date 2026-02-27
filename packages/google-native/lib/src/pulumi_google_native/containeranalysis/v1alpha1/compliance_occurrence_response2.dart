// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'non_compliant_file_response2.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrenceResponse2 {
  /// The reason for non compliance of these files.
  final String nonComplianceReason;

  /// A list of files which are violating compliance checks.
  final List<NonCompliantFileResponse2> nonCompliantFiles;

  ComplianceOccurrenceResponse2({
    required this.nonComplianceReason,
    required this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nonComplianceReason'] = nonComplianceReason;
    map['nonCompliantFiles'] =
        Input.encodeList<NonCompliantFileResponse2, Map<String, dynamic>>(
            nonCompliantFiles, (value) => value.toMap());
    return map;
  }

  factory ComplianceOccurrenceResponse2.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrenceResponse2(
      nonComplianceReason: map['nonComplianceReason'] as String,
      nonCompliantFiles: Input.decodeList<NonCompliantFileResponse2>(
          map['nonCompliantFiles'],
          (value) => NonCompliantFileResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
