// ignore_for_file: unused_element, unnecessary_cast

import 'completeness.dart';

/// Other properties of the build.
class Metadata {
  /// The timestamp of when the build completed.
  final String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final String? buildInvocationId;

  /// The timestamp of when the build started.
  final String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be complete.
  final Completeness? completeness;

  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final bool? reproducible;

  /// Creates a new [Metadata].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  Metadata({
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

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
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
          : Completeness.fromMap(
              (map['completeness'] as Map).cast<String, dynamic>(),
            ),
      reproducible: map['reproducible'] == null
          ? null
          : map['reproducible'] as bool,
    );
  }
}
