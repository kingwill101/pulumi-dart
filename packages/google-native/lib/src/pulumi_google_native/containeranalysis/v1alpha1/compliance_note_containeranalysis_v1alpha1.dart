// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_containeranalysis_v1alpha1.dart';
import 'compliance_version_containeranalysis_v1alpha1.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNoteContaineranalysisV1alpha1 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final CisBenchmarkContaineranalysisV1alpha1? cisBenchmark;

  /// A description about this compliance check.
  final String? description;

  /// A rationale for the existence of this compliance check.
  final String? rationale;

  /// A description of remediation steps if the compliance check fails.
  final String? remediation;

  /// Serialized scan instructions with a predefined format.
  final String? scanInstructions;

  /// The title that identifies this compliance check.
  final String? title;

  /// The OS and config versions the benchmark applies to.
  final List<ComplianceVersionContaineranalysisV1alpha1>? version;

  ComplianceNoteContaineranalysisV1alpha1({
    this.cisBenchmark,
    this.description,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cisBenchmarkValue = cisBenchmark;
    if (cisBenchmarkValue != null) {
      map['cisBenchmark'] = cisBenchmarkValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final rationaleValue = rationale;
    if (rationaleValue != null) {
      map['rationale'] = rationaleValue;
    }
    final remediationValue = remediation;
    if (remediationValue != null) {
      map['remediation'] = remediationValue;
    }
    final scanInstructionsValue = scanInstructions;
    if (scanInstructionsValue != null) {
      map['scanInstructions'] = scanInstructionsValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = pulumi.Input.encodeList<
          ComplianceVersionContaineranalysisV1alpha1,
          Map<String, dynamic>>(versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComplianceNoteContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ComplianceNoteContaineranalysisV1alpha1(
      cisBenchmark: map['cisBenchmark'] == null
          ? null
          : CisBenchmarkContaineranalysisV1alpha1.fromMap(
              (map['cisBenchmark'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      rationale: map['rationale'] == null ? null : map['rationale'] as String,
      remediation:
          map['remediation'] == null ? null : map['remediation'] as String,
      scanInstructions: map['scanInstructions'] == null
          ? null
          : map['scanInstructions'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      version: map['version'] == null
          ? null
          : pulumi.Input.decodeList<ComplianceVersionContaineranalysisV1alpha1>(
              map['version'],
              (value) => ComplianceVersionContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
