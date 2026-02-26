enum RegistrationDomainNoticesItem2 {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItem2(this.value);
  final String value;

  static RegistrationDomainNoticesItem2 fromValue(String value) {
    for (final item in RegistrationDomainNoticesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationDomainNoticesItem2 value: $value');
  }
}
