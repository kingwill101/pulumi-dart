enum RegistrationContactNoticesItem2 {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItem2(this.value);
  final String value;

  static RegistrationContactNoticesItem2 fromValue(String value) {
    for (final item in RegistrationContactNoticesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegistrationContactNoticesItem2 value: $value');
  }
}
