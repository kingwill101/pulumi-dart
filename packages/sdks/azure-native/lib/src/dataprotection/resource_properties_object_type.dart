/// Type of the specific object - used for deserializing
enum ResourcePropertiesObjectType {
  valueDefaultResourceProperties("DefaultResourceProperties");

  const ResourcePropertiesObjectType(this.wireValue);
  final String wireValue;

  static ResourcePropertiesObjectType fromValue(String value) {
    for (final item in ResourcePropertiesObjectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePropertiesObjectType value: $value');
  }
}
