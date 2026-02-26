/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacy2 {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacy2(this.value);
  final String value;

  static ContactSettingsPrivacy2 fromValue(String value) {
    for (final item in ContactSettingsPrivacy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactSettingsPrivacy2 value: $value');
  }
}
