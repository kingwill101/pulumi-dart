/// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
enum LearningRateScheduler {
  valueNone("None"),
  valueWarmupCosine("WarmupCosine"),
  valueStep("Step");

  const LearningRateScheduler(this.value);
  final String value;

  static LearningRateScheduler fromValue(String value) {
    for (final item in LearningRateScheduler.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LearningRateScheduler value: $value');
  }
}

