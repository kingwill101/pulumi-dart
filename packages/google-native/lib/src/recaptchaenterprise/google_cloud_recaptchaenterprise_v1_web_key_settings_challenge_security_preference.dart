/// Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
enum GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference {
  challengeSecurityPreferenceUnspecified(
    "CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED",
  ),
  usability("USABILITY"),
  balance("BALANCE"),
  security("SECURITY");

  const GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference(
    this.value,
  );
  final String value;

  static GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference
  fromValue(String value) {
    for (final item
        in GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference value: $value',
    );
  }
}
