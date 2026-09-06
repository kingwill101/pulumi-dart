import 'package:pulumi/pulumi.dart' as pulumi;

/// Learning rate scheduler enum.
enum LearningRateScheduler implements pulumi.PulumiEnum<String> {
  none("None"),
  warmupCosine("WarmupCosine"),
  step("Step");

  const LearningRateScheduler(this.wireValue);
  @override
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
