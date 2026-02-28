/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacyDomainsV1alpha2 {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacyDomainsV1alpha2(this.value);
  final String value;

  static ContactSettingsPrivacyDomainsV1alpha2 fromValue(String value) {
    for (final item in ContactSettingsPrivacyDomainsV1alpha2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ContactSettingsPrivacyDomainsV1alpha2 value: $value');
  }
}
