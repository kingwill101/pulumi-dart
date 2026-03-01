// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark.dart';
import 'compliance_version.dart';

class ComplianceNote {
  final CisBenchmark? cisBenchmark;

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
  final List<ComplianceVersion>? version;

  /// Creates a new [ComplianceNote].
  /// [cisBenchmark] Optional.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  ComplianceNote({
    this.cisBenchmark,
    this.description,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cisBenchmark': ?cisBenchmark == null ? null : cisBenchmark!.toMap(),
      'description': ?description,
      'rationale': ?rationale,
      'remediation': ?remediation,
      'scanInstructions': ?scanInstructions,
      'title': ?title,
      'version': ?version == null
          ? null
          : pulumi.Input.encodeList<ComplianceVersion, Map<String, dynamic>>(
              version!,
              (value) => value.toMap(),
            ),
    };
  }

  factory ComplianceNote.fromMap(Map<String, dynamic> map) {
    return ComplianceNote(
      cisBenchmark: map['cisBenchmark'] == null
          ? null
          : CisBenchmark.fromMap(
              (map['cisBenchmark'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      rationale: map['rationale'] == null ? null : map['rationale'] as String,
      remediation: map['remediation'] == null
          ? null
          : map['remediation'] as String,
      scanInstructions: map['scanInstructions'] == null
          ? null
          : map['scanInstructions'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      version: map['version'] == null
          ? null
          : pulumi.Input.decodeList<ComplianceVersion>(
              map['version'],
              (value) => ComplianceVersion.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
