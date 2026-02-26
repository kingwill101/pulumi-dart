enum RegistrationContactNoticesItem3 {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItem3(this.value);
  final String value;

  static RegistrationContactNoticesItem3 fromValue(String value) {
    for (final item in RegistrationContactNoticesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegistrationContactNoticesItem3 value: $value');
  }
}
