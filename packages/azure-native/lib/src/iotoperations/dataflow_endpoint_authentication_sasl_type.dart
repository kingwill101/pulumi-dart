/// Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
enum DataflowEndpointAuthenticationSaslType {
  plain("Plain"),
  scramSha256("ScramSha256"),
  scramSha512("ScramSha512");

  const DataflowEndpointAuthenticationSaslType(this.value);
  final String value;

  static DataflowEndpointAuthenticationSaslType fromValue(String value) {
    for (final item in DataflowEndpointAuthenticationSaslType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointAuthenticationSaslType value: $value');
  }
}

