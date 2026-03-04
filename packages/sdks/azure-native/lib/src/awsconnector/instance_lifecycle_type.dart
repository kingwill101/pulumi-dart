/// Property value
enum InstanceLifecycleType {
  capacityBlock("capacity-block"),
  scheduled("scheduled"),
  spot("spot");

  const InstanceLifecycleType(this.wireValue);
  final String wireValue;

  static InstanceLifecycleType fromValue(String value) {
    for (final item in InstanceLifecycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceLifecycleType value: $value');
  }
}
