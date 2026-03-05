/// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, only allowed value is NoSchedule.
enum TaintEffect {
  noSchedule("NoSchedule");

  const TaintEffect(this.wireValue);
  final String wireValue;

  static TaintEffect fromValue(String value) {
    for (final item in TaintEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaintEffect value: $value');
  }
}

