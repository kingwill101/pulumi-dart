// ignore_for_file: unused_element, unnecessary_cast

import 'slsa_completeness_response.dart';

/// Other properties of the build.
class SlsaMetadataResponse {
  /// The timestamp of when the build completed.
  final String buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final String buildInvocationId;

  /// The timestamp of when the build started.
  final String buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be complete.
  final SlsaCompletenessResponse completeness;

  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final bool reproducible;

  /// Creates a new [SlsaMetadataResponse].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  SlsaMetadataResponse({
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

  factory SlsaMetadataResponse.fromMap(Map<String, dynamic> map) {
    return SlsaMetadataResponse(
      buildFinishedOn: map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] as String,
      completeness: SlsaCompletenessResponse.fromMap(
        (map['completeness'] as Map).cast<String, dynamic>(),
      ),
      reproducible: map['reproducible'] as bool,
    );
  }
}
