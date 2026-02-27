// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cis_benchmark2.dart';
import 'compliance_version2.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNote2 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final CisBenchmark2? cisBenchmark;

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
  final List<ComplianceVersion2>? version;

  ComplianceNote2({
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
      map['version'] =
          Input.encodeList<ComplianceVersion2, Map<String, dynamic>>(
              versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory ComplianceNote2.fromMap(Map<String, dynamic> map) {
    return ComplianceNote2(
      cisBenchmark: map['cisBenchmark'] == null
          ? null
          : CisBenchmark2.fromMap(
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
          : Input.decodeList<ComplianceVersion2>(
              map['version'],
              (value) => ComplianceVersion2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
