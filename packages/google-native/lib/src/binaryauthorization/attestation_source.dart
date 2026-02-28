// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the locations for fetching the provenance attestations.
class AttestationSource {
  /// The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  final List<String>? containerAnalysisAttestationProjects;

  /// Creates a new [AttestationSource].
  /// [containerAnalysisAttestationProjects] The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  AttestationSource({
    this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerAnalysisAttestationProjectsValue =
        containerAnalysisAttestationProjects;
    if (containerAnalysisAttestationProjectsValue != null) {
      map['containerAnalysisAttestationProjects'] =
          containerAnalysisAttestationProjectsValue;
    }
    return map;
  }

  factory AttestationSource.fromMap(Map<String, dynamic> map) {
    return AttestationSource(
      containerAnalysisAttestationProjects:
          map['containerAnalysisAttestationProjects'] == null
              ? null
              : (map['containerAnalysisAttestationProjects'] as List)
                  .cast<String>(),
    );
  }
}
