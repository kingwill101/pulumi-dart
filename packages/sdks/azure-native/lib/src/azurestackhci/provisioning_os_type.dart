import 'package:pulumi/pulumi.dart' as pulumi;

/// Target operating system to support polymorphic resource.
enum ProvisioningOsType implements pulumi.PulumiEnum<String> {
  azureLinux("AzureLinux"),
  hCI("HCI");

  const ProvisioningOsType(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningOsType fromValue(String value) {
    for (final item in ProvisioningOsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningOsType value: $value');
  }
}
