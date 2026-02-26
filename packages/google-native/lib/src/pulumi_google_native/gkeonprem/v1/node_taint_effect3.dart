/// The taint effect.
enum NodeTaintEffect3 {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffect3(this.value);
  final String value;

  static NodeTaintEffect3 fromValue(String value) {
    for (final item in NodeTaintEffect3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffect3 value: $value');
  }
}
