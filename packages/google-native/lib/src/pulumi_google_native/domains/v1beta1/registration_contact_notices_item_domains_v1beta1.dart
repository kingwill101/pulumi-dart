enum RegistrationContactNoticesItemDomainsV1beta1 {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItemDomainsV1beta1(this.value);
  final String value;

  static RegistrationContactNoticesItemDomainsV1beta1 fromValue(String value) {
    for (final item in RegistrationContactNoticesItemDomainsV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegistrationContactNoticesItemDomainsV1beta1 value: $value');
  }
}
