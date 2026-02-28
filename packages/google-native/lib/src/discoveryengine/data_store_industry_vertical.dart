/// Immutable. The industry vertical that the data store registers.
enum DataStoreIndustryVertical {
  industryVerticalUnspecified("INDUSTRY_VERTICAL_UNSPECIFIED"),
  generic("GENERIC"),
  media("MEDIA");

  const DataStoreIndustryVertical(this.value);
  final String value;

  static DataStoreIndustryVertical fromValue(String value) {
    for (final item in DataStoreIndustryVertical.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreIndustryVertical value: $value');
  }
}
