/// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
enum RegionCommitmentPlanComputeV1 {
  invalid("INVALID"),
  thirtySixMonth("THIRTY_SIX_MONTH"),
  twelveMonth("TWELVE_MONTH");

  const RegionCommitmentPlanComputeV1(this.value);
  final String value;

  static RegionCommitmentPlanComputeV1 fromValue(String value) {
    for (final item in RegionCommitmentPlanComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionCommitmentPlanComputeV1 value: $value');
  }
}
