// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_completeness_response.dart';

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse {
  final String buildFinishedOn;
  final String buildInvocationId;
  final String buildStartedOn;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse completeness;
  final bool reproducible;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse].
  /// [buildFinishedOn] Required.
  /// [buildInvocationId] Required.
  /// [buildStartedOn] Required.
  /// [completeness] Required.
  /// [reproducible] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse({
    required this.buildFinishedOn,
    required this.buildInvocationId,
    required this.buildStartedOn,
    required this.completeness,
    required this.reproducible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildFinishedOn': buildFinishedOn,
      'buildInvocationId': buildInvocationId,
      'buildStartedOn': buildStartedOn,
      'completeness': completeness.toMap(),
      'reproducible': reproducible,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse(
      buildFinishedOn: map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] as String,
      completeness:
          GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap(
            (map['completeness'] as Map).cast<String, dynamic>(),
          ),
      reproducible: map['reproducible'] as bool,
    );
  }
}
