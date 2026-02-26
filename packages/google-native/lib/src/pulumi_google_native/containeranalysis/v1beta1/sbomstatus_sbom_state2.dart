/// The progress of the SBOM generation.
enum SBOMStatusSbomState2 {
  sbomStateUnspecified("SBOM_STATE_UNSPECIFIED"),
  pending("PENDING"),
  complete("COMPLETE");

  const SBOMStatusSbomState2(this.value);
  final String value;

  static SBOMStatusSbomState2 fromValue(String value) {
    for (final item in SBOMStatusSbomState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SBOMStatusSbomState2 value: $value');
  }
}
