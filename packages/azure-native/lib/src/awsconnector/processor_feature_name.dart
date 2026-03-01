/// The name of the processor feature. Valid names are ``coreCount`` and ``threadsPerCore``.
enum ProcessorFeatureName {
  coreCount("coreCount"),
  threadsPerCore("threadsPerCore");

  const ProcessorFeatureName(this.value);
  final String value;

  static ProcessorFeatureName fromValue(String value) {
    for (final item in ProcessorFeatureName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessorFeatureName value: $value');
  }
}

