import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the specific object - used for deserializing
enum ResourcePropertiesObjectType implements pulumi.PulumiEnum<String> {
  valueDefaultResourceProperties("DefaultResourceProperties");

  const ResourcePropertiesObjectType(this.wireValue);
  @override
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
