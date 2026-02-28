// ignore_for_file: unused_element, unnecessary_cast

import 'slsa_completeness.dart';

/// Other properties of the build.
class SlsaMetadata {
  /// The timestamp of when the build completed.
  final String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final String? buildInvocationId;

  /// The timestamp of when the build started.
  final String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be complete.
  final SlsaCompleteness? completeness;

  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final bool? reproducible;

  /// Creates a new [SlsaMetadata].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  SlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildFinishedOnValue = buildFinishedOn;
    if (buildFinishedOnValue != null) {
      map['buildFinishedOn'] = buildFinishedOnValue;
    }
    final buildInvocationIdValue = buildInvocationId;
    if (buildInvocationIdValue != null) {
      map['buildInvocationId'] = buildInvocationIdValue;
    }
    final buildStartedOnValue = buildStartedOn;
    if (buildStartedOnValue != null) {
      map['buildStartedOn'] = buildStartedOnValue;
    }
    final completenessValue = completeness;
    if (completenessValue != null) {
      map['completeness'] = completenessValue.toMap();
    }
    final reproducibleValue = reproducible;
    if (reproducibleValue != null) {
      map['reproducible'] = reproducibleValue;
    }
    return map;
  }

  factory SlsaMetadata.fromMap(Map<String, dynamic> map) {
    return SlsaMetadata(
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
          : SlsaCompleteness.fromMap(
              (map['completeness'] as Map).cast<String, dynamic>()),
      reproducible:
          map['reproducible'] == null ? null : map['reproducible'] as bool,
    );
  }
}
