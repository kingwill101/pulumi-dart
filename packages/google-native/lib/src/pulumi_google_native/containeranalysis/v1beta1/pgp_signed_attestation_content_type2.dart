/// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
enum PgpSignedAttestationContentType2 {
  contentTypeUnspecified("CONTENT_TYPE_UNSPECIFIED"),
  simpleSigningJson("SIMPLE_SIGNING_JSON");

  const PgpSignedAttestationContentType2(this.value);
  final String value;

  static PgpSignedAttestationContentType2 fromValue(String value) {
    for (final item in PgpSignedAttestationContentType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PgpSignedAttestationContentType2 value: $value');
  }
}
