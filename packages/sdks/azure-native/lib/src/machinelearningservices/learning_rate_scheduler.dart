/// Learning rate scheduler enum.
enum LearningRateScheduler {
  none("None"),
  warmupCosine("WarmupCosine"),
  step("Step");

  const LearningRateScheduler(this.wireValue);
  final String wireValue;

  static LearningRateScheduler fromValue(String value) {
    for (final item in LearningRateScheduler.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LearningRateScheduler value: $value');
  }
}
