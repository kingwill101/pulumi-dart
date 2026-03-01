// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_completeness.dart';

/// Other properties of the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata {
  /// The timestamp of when the build completed.
  final String? buildFinishedOn;

  /// Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  final String? buildInvocationId;

  /// The timestamp of when the build started.
  final String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be complete.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness?
  completeness;

  /// If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  final bool? reproducible;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildFinishedOn': ?buildFinishedOn,
      'buildInvocationId': ?buildInvocationId,
      'buildStartedOn': ?buildStartedOn,
      'completeness': ?completeness == null ? null : completeness!.toMap(),
      'reproducible': ?reproducible,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata(
      buildFinishedOn: map['buildFinishedOn'] == null
          ? null
          : map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] == null
          ? null
          : map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] == null
          ? null
          : map['buildStartedOn'] as String,
      completeness: map['completeness'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(
              (map['completeness'] as Map).cast<String, dynamic>(),
            ),
      reproducible: map['reproducible'] == null
          ? null
          : map['reproducible'] as bool,
    );
  }
}
