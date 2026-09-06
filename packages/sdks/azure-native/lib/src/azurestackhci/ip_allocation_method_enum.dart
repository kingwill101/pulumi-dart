import 'package:pulumi/pulumi.dart' as pulumi;

/// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
enum IpAllocationMethodEnum implements pulumi.PulumiEnum<String> {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const IpAllocationMethodEnum(this.wireValue);
  @override
  final String wireValue;

  static IpAllocationMethodEnum fromValue(String value) {
    for (final item in IpAllocationMethodEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationMethodEnum value: $value');
  }
}
