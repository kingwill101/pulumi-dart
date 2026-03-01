/// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
enum InstanceGroupConfigPreemptibilityDataprocV1beta2 {
  preemptibilityUnspecified("PREEMPTIBILITY_UNSPECIFIED"),
  nonPreemptible("NON_PREEMPTIBLE"),
  preemptible("PREEMPTIBLE");

  const InstanceGroupConfigPreemptibilityDataprocV1beta2(this.value);
  final String value;

  static InstanceGroupConfigPreemptibilityDataprocV1beta2 fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupConfigPreemptibilityDataprocV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupConfigPreemptibilityDataprocV1beta2 value: $value',
    );
  }
}
