enum DataSamplingConfigBehaviorsItem {
  dataSamplingBehaviorUnspecified("DATA_SAMPLING_BEHAVIOR_UNSPECIFIED"),
  disabled("DISABLED"),
  alwaysOn("ALWAYS_ON"),
  exceptions("EXCEPTIONS");

  const DataSamplingConfigBehaviorsItem(this.value);
  final String value;

  static DataSamplingConfigBehaviorsItem fromValue(String value) {
    for (final item in DataSamplingConfigBehaviorsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DataSamplingConfigBehaviorsItem value: $value',
    );
  }
}
