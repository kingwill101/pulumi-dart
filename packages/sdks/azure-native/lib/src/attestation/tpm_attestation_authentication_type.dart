/// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
enum TpmAttestationAuthenticationType {
  enabled("Enabled"),
  disabled("Disabled");

  const TpmAttestationAuthenticationType(this.wireValue);
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

