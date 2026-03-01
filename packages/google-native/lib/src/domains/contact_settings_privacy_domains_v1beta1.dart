/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacyDomainsV1beta1 {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacyDomainsV1beta1(this.value);
  final String value;

  static ContactSettingsPrivacyDomainsV1beta1 fromValue(String value) {
    for (final item in ContactSettingsPrivacyDomainsV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ContactSettingsPrivacyDomainsV1beta1 value: $value',
    );
  }
}
