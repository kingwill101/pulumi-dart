/// Report type.
enum ReportTypeMigrationcenterV1alpha1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  totalCostOfOwnership("TOTAL_COST_OF_OWNERSHIP");

  const ReportTypeMigrationcenterV1alpha1(this.value);
  final String value;

  static ReportTypeMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in ReportTypeMigrationcenterV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportTypeMigrationcenterV1alpha1 value: $value');
  }
}

