/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacy3 {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacy3(this.value);
  final String value;

  static ContactSettingsPrivacy3 fromValue(String value) {
    for (final item in ContactSettingsPrivacy3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactSettingsPrivacy3 value: $value');
  }
}
