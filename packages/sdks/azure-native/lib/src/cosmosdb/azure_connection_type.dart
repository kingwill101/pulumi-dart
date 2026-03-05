/// How to connect to the azure services needed for running the cluster
enum AzureConnectionType {
  valueNone("None"),
  valueVPN("VPN");

  const AzureConnectionType(this.wireValue);
  final String wireValue;

  static AzureConnectionType fromValue(String value) {
    for (final item in AzureConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureConnectionType value: $value');
  }
}

