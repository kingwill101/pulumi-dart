/// Allow single data node failure
enum DataResilienceTier {
  notDataResilient("NotDataResilient"),
  dataResilient("DataResilient");

  const DataResilienceTier(this.wireValue);
  final String wireValue;

  static DataResilienceTier fromValue(String value) {
    for (final item in DataResilienceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResilienceTier value: $value');
  }
}
