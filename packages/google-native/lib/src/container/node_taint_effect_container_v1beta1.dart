/// Effect for taint.
enum NodeTaintEffectContainerV1beta1 {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffectContainerV1beta1(this.value);
  final String value;

  static NodeTaintEffectContainerV1beta1 fromValue(String value) {
    for (final item in NodeTaintEffectContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffectContainerV1beta1 value: $value');
  }
}

