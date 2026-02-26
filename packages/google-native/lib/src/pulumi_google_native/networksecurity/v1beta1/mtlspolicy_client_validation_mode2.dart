/// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
enum MTLSPolicyClientValidationMode2 {
  clientValidationModeUnspecified("CLIENT_VALIDATION_MODE_UNSPECIFIED"),
  allowInvalidOrMissingClientCert("ALLOW_INVALID_OR_MISSING_CLIENT_CERT"),
  rejectInvalid("REJECT_INVALID");

  const MTLSPolicyClientValidationMode2(this.value);
  final String value;

  static MTLSPolicyClientValidationMode2 fromValue(String value) {
    for (final item in MTLSPolicyClientValidationMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MTLSPolicyClientValidationMode2 value: $value');
  }
}
