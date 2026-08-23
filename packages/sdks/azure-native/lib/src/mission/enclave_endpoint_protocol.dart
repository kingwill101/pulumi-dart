/// Enclave Endpoint Protocol Enum
enum EnclaveEndpointProtocol {
  aNY("ANY"),
  tCP("TCP"),
  uDP("UDP"),
  iCMP("ICMP"),
  eSP("ESP"),
  aH("AH");

  const EnclaveEndpointProtocol(this.wireValue);
  final String wireValue;

  static EnclaveEndpointProtocol fromValue(String value) {
    for (final item in EnclaveEndpointProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnclaveEndpointProtocol value: $value');
  }
}
