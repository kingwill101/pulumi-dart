/// The readiness state of the corresponding partner topic.
enum ReadinessState {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated");

  const ReadinessState(this.wireValue);
  final String wireValue;

  static ReadinessState fromValue(String value) {
    for (final item in ReadinessState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadinessState value: $value');
  }
}
