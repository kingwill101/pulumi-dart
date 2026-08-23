enum IntegrationConnectionType {
  valueINTERNET("INTERNET"),
  valueVPCLINK("VPC_LINK");

  const IntegrationConnectionType(this.wireValue);
  final String wireValue;

  static IntegrationConnectionType fromValue(String value) {
    for (final item in IntegrationConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationConnectionType value: $value');
  }
}
