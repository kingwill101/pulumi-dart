// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_completeness.dart';

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata {
  final String? buildFinishedOn;
  final String? buildInvocationId;
  final String? buildStartedOn;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness? completeness;
  final bool? reproducible;

  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata({
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

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(
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
          : GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(
              (map['completeness'] as Map).cast<String, dynamic>()),
      reproducible:
          map['reproducible'] == null ? null : map['reproducible'] as bool,
    );
  }
}
