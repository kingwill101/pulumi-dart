/// Filter option.
enum FilterOption {
  notSpecified("NotSpecified"),
  enableSubscriptionFilterOnTenant("EnableSubscriptionFilterOnTenant");

  const FilterOption(this.value);
  final String value;

  static FilterOption fromValue(String value) {
    for (final item in FilterOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterOption value: $value');
  }
}

