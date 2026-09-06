import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ResourceType implements pulumi.PulumiEnum<String> {
  eC2Instance("EC2Instance"),
  managedInstance("ManagedInstance");

  const ResourceType(this.wireValue);
  @override
  final String wireValue;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}
