import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
enum DataflowEndpointAuthenticationSaslType implements pulumi.PulumiEnum<String> {
  plain("Plain"),
  scramSha256("ScramSha256"),
  scramSha512("ScramSha512");

  const DataflowEndpointAuthenticationSaslType(this.wireValue);
  @override
  final String wireValue;

  static DataflowEndpointAuthenticationSaslType fromValue(String value) {
    for (final item in DataflowEndpointAuthenticationSaslType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointAuthenticationSaslType value: $value');
  }
}
