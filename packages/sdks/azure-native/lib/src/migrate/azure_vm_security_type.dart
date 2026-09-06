import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Vm Security Type
enum AzureVmSecurityType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  standard("Standard"),
  tVM("TVM"),
  cVM("CVM");

  const AzureVmSecurityType(this.wireValue);
  @override
  final String wireValue;

  static AzureVmSecurityType fromValue(String value) {
    for (final item in AzureVmSecurityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureVmSecurityType value: $value');
  }
}
