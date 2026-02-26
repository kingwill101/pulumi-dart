enum RegistrationContactNoticesItem {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItem(this.value);
  final String value;

  static RegistrationContactNoticesItem fromValue(String value) {
    for (final item in RegistrationContactNoticesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationContactNoticesItem value: $value');
  }
}
