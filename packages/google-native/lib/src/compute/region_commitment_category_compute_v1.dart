/// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
enum RegionCommitmentCategoryComputeV1 {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  license("LICENSE"),
  machine("MACHINE");

  const RegionCommitmentCategoryComputeV1(this.value);
  final String value;

  static RegionCommitmentCategoryComputeV1 fromValue(String value) {
    for (final item in RegionCommitmentCategoryComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionCommitmentCategoryComputeV1 value: $value',
    );
  }
}
