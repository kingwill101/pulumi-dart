/// Effect for taint.
enum NodeTaintEffect2 {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffect2(this.value);
  final String value;

  static NodeTaintEffect2 fromValue(String value) {
    for (final item in NodeTaintEffect2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffect2 value: $value');
  }
}
