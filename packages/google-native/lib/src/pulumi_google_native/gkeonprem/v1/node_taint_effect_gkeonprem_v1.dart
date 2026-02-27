/// The taint effect.
enum NodeTaintEffectGkeonpremV1 {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffectGkeonpremV1(this.value);
  final String value;

  static NodeTaintEffectGkeonpremV1 fromValue(String value) {
    for (final item in NodeTaintEffectGkeonpremV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffectGkeonpremV1 value: $value');
  }
}
