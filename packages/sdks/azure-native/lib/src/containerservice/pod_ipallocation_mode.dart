/// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
enum PodIPAllocationMode {
  valueDynamicIndividual("DynamicIndividual"),
  valueStaticBlock("StaticBlock");

  const PodIPAllocationMode(this.value);
  final String value;

  static PodIPAllocationMode fromValue(String value) {
    for (final item in PodIPAllocationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PodIPAllocationMode value: $value');
  }
}

