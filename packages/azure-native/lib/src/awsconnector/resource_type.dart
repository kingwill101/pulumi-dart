/// Property value
enum ResourceType {
  eC2Instance("EC2Instance"),
  managedInstance("ManagedInstance");

  const ResourceType(this.value);
  final String value;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}

