// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_completeness_response.dart';

/// Other properties of the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse {
  /// The timestamp of when the build completed.
  final String buildFinishedOn;
  /// Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  final String buildInvocationId;
  /// The timestamp of when the build started.
  final String buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse completeness;
  /// If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  final bool reproducible;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse(
      buildFinishedOn: map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] as String,
      completeness: GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap((map['completeness'] as Map).cast<String, dynamic>()),
      reproducible: map['reproducible'] as bool,
    );
  }
}

