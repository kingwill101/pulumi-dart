/// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
enum ModelFilteringOption2 {
  recommendationsFilteringOptionUnspecified(
      "RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED"),
  recommendationsFilteringDisabled("RECOMMENDATIONS_FILTERING_DISABLED"),
  recommendationsFilteringEnabled("RECOMMENDATIONS_FILTERING_ENABLED");

  const ModelFilteringOption2(this.value);
  final String value;

  static ModelFilteringOption2 fromValue(String value) {
    for (final item in ModelFilteringOption2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelFilteringOption2 value: $value');
  }
}
