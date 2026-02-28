// ignore_for_file: unused_element, unnecessary_cast

/// The status of an SBOM generation.
class SBOMStatusResponseContaineranalysisV1alpha1 {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String error;

  /// The progress of the SBOM generation.
  final String sbomState;

  /// Creates a new [SBOMStatusResponseContaineranalysisV1alpha1].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  SBOMStatusResponseContaineranalysisV1alpha1({
    required this.error,
    required this.sbomState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['sbomState'] = sbomState;
    return map;
  }

  factory SBOMStatusResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SBOMStatusResponseContaineranalysisV1alpha1(
      error: map['error'] as String,
      sbomState: map['sbomState'] as String,
    );
  }
}
