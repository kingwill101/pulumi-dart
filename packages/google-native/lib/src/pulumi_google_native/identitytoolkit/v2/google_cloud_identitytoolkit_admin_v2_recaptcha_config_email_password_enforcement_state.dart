/// The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
enum GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState {
  recaptchaProviderEnforcementStateUnspecified(
      "RECAPTCHA_PROVIDER_ENFORCEMENT_STATE_UNSPECIFIED"),
  off("OFF"),
  audit("AUDIT"),
  enforce("ENFORCE");

  const GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState(
      this.value);
  final String value;

  static GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState
      fromValue(String value) {
    for (final item
        in GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState value: $value');
  }
}
