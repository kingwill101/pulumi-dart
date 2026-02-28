// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_compliant_file_response_containeranalysis_v1alpha1.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrenceResponseContaineranalysisV1alpha1 {
  /// The reason for non compliance of these files.
  final String nonComplianceReason;

  /// A list of files which are violating compliance checks.
  final List<NonCompliantFileResponseContaineranalysisV1alpha1>
      nonCompliantFiles;

  /// Creates a new [ComplianceOccurrenceResponseContaineranalysisV1alpha1].
  /// [nonComplianceReason] The reason for non compliance of these files.
  /// [nonCompliantFiles] A list of files which are violating compliance checks.
  ComplianceOccurrenceResponseContaineranalysisV1alpha1({
    required this.nonComplianceReason,
    required this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nonComplianceReason'] = nonComplianceReason;
    map['nonCompliantFiles'] = pulumi.Input.encodeList<
        NonCompliantFileResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(nonCompliantFiles, (value) => value.toMap());
    return map;
  }

  factory ComplianceOccurrenceResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ComplianceOccurrenceResponseContaineranalysisV1alpha1(
      nonComplianceReason: map['nonComplianceReason'] as String,
      nonCompliantFiles: pulumi.Input.decodeList<
              NonCompliantFileResponseContaineranalysisV1alpha1>(
          map['nonCompliantFiles'],
          (value) => NonCompliantFileResponseContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
