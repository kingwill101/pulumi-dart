/// The available sub plans
enum SubPlan {
  valueP1("P1"),
  valueP2("P2");

  const SubPlan(this.value);
  final String value;

  static SubPlan fromValue(String value) {
    for (final item in SubPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubPlan value: $value');
  }
}

