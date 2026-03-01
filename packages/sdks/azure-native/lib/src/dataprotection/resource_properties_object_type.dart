/// Type of the specific object - used for deserializing
enum ResourcePropertiesObjectType {
  valueDefaultResourceProperties("DefaultResourceProperties");

  const ResourcePropertiesObjectType(this.value);
  final String value;

  static ResourcePropertiesObjectType fromValue(String value) {
    for (final item in ResourcePropertiesObjectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePropertiesObjectType value: $value');
  }
}

