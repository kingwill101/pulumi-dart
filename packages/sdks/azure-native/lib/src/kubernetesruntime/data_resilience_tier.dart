/// Allow single data node failure
enum DataResilienceTier {
  notDataResilient("NotDataResilient"),
  dataResilient("DataResilient");

  const DataResilienceTier(this.value);
  final String value;

  static DataResilienceTier fromValue(String value) {
    for (final item in DataResilienceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResilienceTier value: $value');
  }
}

