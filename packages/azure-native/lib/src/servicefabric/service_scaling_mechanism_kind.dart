/// Enumerates the ways that a service can be partitioned.
enum ServiceScalingMechanismKind {
  scalePartitionInstanceCount("ScalePartitionInstanceCount"),
  addRemoveIncrementalNamedPartition("AddRemoveIncrementalNamedPartition");

  const ServiceScalingMechanismKind(this.value);
  final String value;

  static ServiceScalingMechanismKind fromValue(String value) {
    for (final item in ServiceScalingMechanismKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceScalingMechanismKind value: $value');
  }
}

