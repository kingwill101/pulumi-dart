// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_compliant_file_containeranalysis_v1alpha1.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrenceContaineranalysisV1alpha1 {
  /// The reason for non compliance of these files.
  final String? nonComplianceReason;

  /// A list of files which are violating compliance checks.
  final List<NonCompliantFileContaineranalysisV1alpha1>? nonCompliantFiles;

  /// Creates a new [ComplianceOccurrenceContaineranalysisV1alpha1].
  /// [nonComplianceReason] The reason for non compliance of these files.
  /// [nonCompliantFiles] A list of files which are violating compliance checks.
  ComplianceOccurrenceContaineranalysisV1alpha1({
    this.nonComplianceReason,
    this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonComplianceReason': ?nonComplianceReason,
      'nonCompliantFiles': ?nonCompliantFiles == null
          ? null
          : pulumi.Input.encodeList<
              NonCompliantFileContaineranalysisV1alpha1,
              Map<String, dynamic>
            >(nonCompliantFiles!, (value) => value.toMap()),
    };
  }

  factory ComplianceOccurrenceContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ComplianceOccurrenceContaineranalysisV1alpha1(
      nonComplianceReason: map['nonComplianceReason'] == null
          ? null
          : map['nonComplianceReason'] as String,
      nonCompliantFiles: map['nonCompliantFiles'] == null
          ? null
          : pulumi.Input.decodeList<NonCompliantFileContaineranalysisV1alpha1>(
              map['nonCompliantFiles'],
              (value) => NonCompliantFileContaineranalysisV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
