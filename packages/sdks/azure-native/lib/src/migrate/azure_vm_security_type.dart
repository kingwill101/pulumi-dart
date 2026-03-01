/// Azure Vm Security Type
enum AzureVmSecurityType {
  unknown("Unknown"),
  standard("Standard"),
  tVM("TVM"),
  cVM("CVM");

  const AzureVmSecurityType(this.value);
  final String value;

  static AzureVmSecurityType fromValue(String value) {
    for (final item in AzureVmSecurityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureVmSecurityType value: $value');
  }
}

