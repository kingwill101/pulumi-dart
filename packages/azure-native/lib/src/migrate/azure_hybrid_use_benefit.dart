/// Gets or sets the user configurable setting to display the linux azure hybrid use
/// benefit.
enum AzureHybridUseBenefit {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const AzureHybridUseBenefit(this.value);
  final String value;

  static AzureHybridUseBenefit fromValue(String value) {
    for (final item in AzureHybridUseBenefit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureHybridUseBenefit value: $value');
  }
}

