// ignore_for_file: unused_element, unnecessary_cast

/// The status of an SBOM generation.
class SBOMStatusResponseContaineranalysisV1beta1 {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String error;

  /// The progress of the SBOM generation.
  final String sbomState;

  SBOMStatusResponseContaineranalysisV1beta1({
    required this.error,
    required this.sbomState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['sbomState'] = sbomState;
    return map;
  }

  factory SBOMStatusResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SBOMStatusResponseContaineranalysisV1beta1(
      error: map['error'] as String,
      sbomState: map['sbomState'] as String,
    );
  }
}
