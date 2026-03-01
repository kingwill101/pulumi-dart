/// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
enum AutoProvision {
  valueOn("On"),
  valueOff("Off");

  const AutoProvision(this.value);
  final String value;

  static AutoProvision fromValue(String value) {
    for (final item in AutoProvision.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProvision value: $value');
  }
}

