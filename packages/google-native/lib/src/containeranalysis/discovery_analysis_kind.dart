/// The kind of analysis that is handled by this discovery.
enum DiscoveryAnalysisKind {
  kindUnspecified("KIND_UNSPECIFIED"),
  packageVulnerability("PACKAGE_VULNERABILITY"),
  buildDetails("BUILD_DETAILS"),
  imageBasis("IMAGE_BASIS"),
  packageManager("PACKAGE_MANAGER"),
  deployable("DEPLOYABLE"),
  discovery("DISCOVERY"),
  attestationAuthority("ATTESTATION_AUTHORITY"),
  upgrade("UPGRADE"),
  compliance("COMPLIANCE"),
  sbom("SBOM"),
  spdxPackage("SPDX_PACKAGE"),
  spdxFile("SPDX_FILE"),
  spdxRelationship("SPDX_RELATIONSHIP"),
  dsseAttestation("DSSE_ATTESTATION"),
  vulnerabilityAssessment("VULNERABILITY_ASSESSMENT"),
  sbomReference("SBOM_REFERENCE");

  const DiscoveryAnalysisKind(this.value);
  final String value;

  static DiscoveryAnalysisKind fromValue(String value) {
    for (final item in DiscoveryAnalysisKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryAnalysisKind value: $value');
  }
}

