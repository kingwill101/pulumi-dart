// ignore_for_file: unused_element, unnecessary_cast

import 'completeness_containeranalysis_v1alpha1.dart';

/// Other properties of the build.
class MetadataContaineranalysisV1alpha1 {
  /// The timestamp of when the build completed.
  final String? buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final String? buildInvocationId;
  /// The timestamp of when the build started.
  final String? buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final CompletenessContaineranalysisV1alpha1? completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final bool? reproducible;

  /// Creates a new [MetadataContaineranalysisV1alpha1].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  MetadataContaineranalysisV1alpha1({
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

  factory MetadataContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return MetadataContaineranalysisV1alpha1(
      buildFinishedOn: map['buildFinishedOn'] == null ? null : map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] == null ? null : map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] == null ? null : map['buildStartedOn'] as String,
      completeness: map['completeness'] == null ? null : CompletenessContaineranalysisV1alpha1.fromMap((map['completeness'] as Map).cast<String, dynamic>()),
      reproducible: map['reproducible'] == null ? null : map['reproducible'] as bool,
    );
  }
}

