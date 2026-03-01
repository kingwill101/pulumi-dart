// ignore_for_file: unused_element, unnecessary_cast

import 'sbomstatus_sbom_state_containeranalysis_v1beta1.dart';

/// The status of an SBOM generation.
class SBOMStatusContaineranalysisV1beta1 {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String? error;

  /// The progress of the SBOM generation.
  final SBOMStatusSbomStateContaineranalysisV1beta1? sbomState;

  /// Creates a new [SBOMStatusContaineranalysisV1beta1].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  SBOMStatusContaineranalysisV1beta1({this.error, this.sbomState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'sbomState': ?sbomState == null ? null : sbomState!.value,
    };
  }

  factory SBOMStatusContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SBOMStatusContaineranalysisV1beta1(
      error: map['error'] == null ? null : map['error'] as String,
      sbomState: map['sbomState'] == null
          ? null
          : SBOMStatusSbomStateContaineranalysisV1beta1.fromValue(
              map['sbomState'] as String,
            ),
    );
  }
}
