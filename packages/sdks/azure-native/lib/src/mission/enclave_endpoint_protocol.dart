import 'package:pulumi/pulumi.dart' as pulumi;

/// Enclave Endpoint Protocol Enum
enum EnclaveEndpointProtocol implements pulumi.PulumiEnum<String> {
  aNY("ANY"),
  tCP("TCP"),
  uDP("UDP"),
  iCMP("ICMP"),
  eSP("ESP"),
  aH("AH");

  const EnclaveEndpointProtocol(this.wireValue);
  @override
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
