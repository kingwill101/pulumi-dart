/// How to connect to the azure services needed for running the cluster
enum AzureConnectionType {
  valueNone("None"),
  valueVPN("VPN");

  const AzureConnectionType(this.value);
  final String value;

  static AzureConnectionType fromValue(String value) {
    for (final item in AzureConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureConnectionType value: $value');
  }
}

