// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cis_benchmark_response2.dart';
import 'compliance_version_response2.dart';

/// ComplianceNote encapsulates all information about a specific compliance check.
class ComplianceNoteResponse2 {
  /// Right now we only have one compliance type, but we may add additional types in the future.
  final CisBenchmarkResponse2 cisBenchmark;

  /// A description about this compliance check.
  final String description;

  /// A rationale for the existence of this compliance check.
  final String rationale;

  /// A description of remediation steps if the compliance check fails.
  final String remediation;

  /// Serialized scan instructions with a predefined format.
  final String scanInstructions;

  /// The title that identifies this compliance check.
  final String title;

  /// The OS and config versions the benchmark applies to.
  final List<ComplianceVersionResponse2> version;

  ComplianceNoteResponse2({
    required this.cisBenchmark,
    required this.description,
    required this.rationale,
    required this.remediation,
    required this.scanInstructions,
    required this.title,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cisBenchmark'] = cisBenchmark.toMap();
    map['description'] = description;
    map['rationale'] = rationale;
    map['remediation'] = remediation;
    map['scanInstructions'] = scanInstructions;
    map['title'] = title;
    map['version'] =
        Input.encodeList<ComplianceVersionResponse2, Map<String, dynamic>>(
            version, (value) => value.toMap());
    return map;
  }

  factory ComplianceNoteResponse2.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteResponse2(
      cisBenchmark: CisBenchmarkResponse2.fromMap(
          (map['cisBenchmark'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      rationale: map['rationale'] as String,
      remediation: map['remediation'] as String,
      scanInstructions: map['scanInstructions'] as String,
      title: map['title'] as String,
      version: Input.decodeList<ComplianceVersionResponse2>(
          map['version'],
          (value) => ComplianceVersionResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
