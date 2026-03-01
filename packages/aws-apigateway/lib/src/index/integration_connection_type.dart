enum IntegrationConnectionType {
  valueINTERNET("INTERNET"),
  valueVPCLINK("VPC_LINK");

  const IntegrationConnectionType(this.value);
  final String value;

  static IntegrationConnectionType fromValue(String value) {
    for (final item in IntegrationConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationConnectionType value: $value');
  }
}

