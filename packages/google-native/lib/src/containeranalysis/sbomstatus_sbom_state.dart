/// The progress of the SBOM generation.
enum SBOMStatusSbomState {
  sbomStateUnspecified("SBOM_STATE_UNSPECIFIED"),
  pending("PENDING"),
  complete("COMPLETE");

  const SBOMStatusSbomState(this.value);
  final String value;

  static SBOMStatusSbomState fromValue(String value) {
    for (final item in SBOMStatusSbomState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SBOMStatusSbomState value: $value');
  }
}
