/// Method used to calculate the revenue that is shared with developers.
enum RatePlanRevenueShareType {
  revenueShareTypeUnspecified("REVENUE_SHARE_TYPE_UNSPECIFIED"),
  fixed("FIXED"),
  volumeBanded("VOLUME_BANDED");

  const RatePlanRevenueShareType(this.value);
  final String value;

  static RatePlanRevenueShareType fromValue(String value) {
    for (final item in RatePlanRevenueShareType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanRevenueShareType value: $value');
  }
}
