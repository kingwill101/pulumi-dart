/// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
enum TpmAttestationAuthenticationType {
  enabled("Enabled"),
  disabled("Disabled");

  const TpmAttestationAuthenticationType(this.value);
  final String value;

  static TpmAttestationAuthenticationType fromValue(String value) {
    for (final item in TpmAttestationAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TpmAttestationAuthenticationType value: $value');
  }
}

