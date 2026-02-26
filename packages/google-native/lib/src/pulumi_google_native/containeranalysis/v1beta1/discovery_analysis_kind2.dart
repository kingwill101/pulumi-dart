/// Required. Immutable. The kind of analysis that is handled by this discovery.
enum DiscoveryAnalysisKind2 {
  noteKindUnspecified("NOTE_KIND_UNSPECIFIED"),
  vulnerability("VULNERABILITY"),
  build("BUILD"),
  image("IMAGE"),
  package("PACKAGE"),
  deployment("DEPLOYMENT"),
  discovery("DISCOVERY"),
  attestation("ATTESTATION"),
  intoto("INTOTO"),
  sbom("SBOM"),
  spdxPackage("SPDX_PACKAGE"),
  spdxFile("SPDX_FILE"),
  spdxRelationship("SPDX_RELATIONSHIP"),
  vulnerabilityAssessment("VULNERABILITY_ASSESSMENT"),
  sbomReference("SBOM_REFERENCE");

  const DiscoveryAnalysisKind2(this.value);
  final String value;

  static DiscoveryAnalysisKind2 fromValue(String value) {
    for (final item in DiscoveryAnalysisKind2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryAnalysisKind2 value: $value');
  }
}
