import 'package:pulumi/pulumi.dart' as pulumi;

/// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
enum TpmAttestationAuthenticationType implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const TpmAttestationAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static TpmAttestationAuthenticationType fromValue(String value) {
    for (final item in TpmAttestationAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TpmAttestationAuthenticationType value: $value');
  }
}
