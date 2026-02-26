/// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
enum InstanceGroupConfigPreemptibility2 {
  preemptibilityUnspecified("PREEMPTIBILITY_UNSPECIFIED"),
  nonPreemptible("NON_PREEMPTIBLE"),
  preemptible("PREEMPTIBLE");

  const InstanceGroupConfigPreemptibility2(this.value);
  final String value;

  static InstanceGroupConfigPreemptibility2 fromValue(String value) {
    for (final item in InstanceGroupConfigPreemptibility2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupConfigPreemptibility2 value: $value');
  }
}
