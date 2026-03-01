// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark_response.dart';
import 'compliance_version_response.dart';

class ComplianceNoteResponse {
  final CisBenchmarkResponse cisBenchmark;

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
  final List<ComplianceVersionResponse> version;

  /// Creates a new [ComplianceNoteResponse].
  /// [cisBenchmark] Required.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  ComplianceNoteResponse({
    required this.cisBenchmark,
    required this.description,
    required this.rationale,
    required this.remediation,
    required this.scanInstructions,
    required this.title,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cisBenchmark': cisBenchmark.toMap(),
      'description': description,
      'rationale': rationale,
      'remediation': remediation,
      'scanInstructions': scanInstructions,
      'title': title,
      'version':
          pulumi.Input.encodeList<
            ComplianceVersionResponse,
            Map<String, dynamic>
          >(version, (value) => value.toMap()),
    };
  }

  factory ComplianceNoteResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceNoteResponse(
      cisBenchmark: CisBenchmarkResponse.fromMap(
        (map['cisBenchmark'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      rationale: map['rationale'] as String,
      remediation: map['remediation'] as String,
      scanInstructions: map['scanInstructions'] as String,
      title: map['title'] as String,
      version: pulumi.Input.decodeList<ComplianceVersionResponse>(
        map['version'],
        (value) => ComplianceVersionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
