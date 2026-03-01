/// Enclave Endpoint Protocol Enum
enum EnclaveEndpointProtocol {
  aNY("ANY"),
  tCP("TCP"),
  uDP("UDP"),
  iCMP("ICMP"),
  eSP("ESP"),
  aH("AH");

  const EnclaveEndpointProtocol(this.value);
  final String value;

  static EnclaveEndpointProtocol fromValue(String value) {
    for (final item in EnclaveEndpointProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnclaveEndpointProtocol value: $value');
  }
}

