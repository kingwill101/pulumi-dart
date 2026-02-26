/// Required. Describes how this key is integrated with the website.
enum GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType {
  integrationTypeUnspecified("INTEGRATION_TYPE_UNSPECIFIED"),
  score("SCORE"),
  checkbox("CHECKBOX"),
  invisible("INVISIBLE");

  const GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType(
      this.value);
  final String value;

  static GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType
      fromValue(String value) {
    for (final item
        in GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType value: $value');
  }
}
