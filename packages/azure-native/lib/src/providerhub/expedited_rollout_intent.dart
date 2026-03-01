/// Expedited rollout intent.
enum ExpeditedRolloutIntent {
  notSpecified("NotSpecified"),
  hotfix("Hotfix");

  const ExpeditedRolloutIntent(this.value);
  final String value;

  static ExpeditedRolloutIntent fromValue(String value) {
    for (final item in ExpeditedRolloutIntent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpeditedRolloutIntent value: $value');
  }
}

