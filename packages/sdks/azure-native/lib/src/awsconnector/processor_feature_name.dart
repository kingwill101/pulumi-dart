/// The name of the processor feature. Valid names are ``coreCount`` and ``threadsPerCore``.
enum ProcessorFeatureName {
  coreCount("coreCount"),
  threadsPerCore("threadsPerCore");

  const ProcessorFeatureName(this.wireValue);
  final String wireValue;

  static ProcessorFeatureName fromValue(String value) {
    for (final item in ProcessorFeatureName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessorFeatureName value: $value');
  }
}
