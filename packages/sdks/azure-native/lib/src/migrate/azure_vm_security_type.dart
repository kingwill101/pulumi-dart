/// Azure Vm Security Type
enum AzureVmSecurityType {
  unknown("Unknown"),
  standard("Standard"),
  tVM("TVM"),
  cVM("CVM");

  const AzureVmSecurityType(this.wireValue);
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
