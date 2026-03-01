// ignore_for_file: unused_element, unnecessary_cast

import 'sbomstatus_sbom_state.dart';

/// The status of an SBOM generation.
class SBOMStatus {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String? error;

  /// The progress of the SBOM generation.
  final SBOMStatusSbomState? sbomState;

  /// Creates a new [SBOMStatus].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  SBOMStatus({this.error, this.sbomState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'sbomState': ?sbomState == null ? null : sbomState!.value,
    };
  }

  factory SBOMStatus.fromMap(Map<String, dynamic> map) {
    return SBOMStatus(
      error: map['error'] == null ? null : map['error'] as String,
      sbomState: map['sbomState'] == null
          ? null
          : SBOMStatusSbomState.fromValue(map['sbomState'] as String),
    );
  }
}
