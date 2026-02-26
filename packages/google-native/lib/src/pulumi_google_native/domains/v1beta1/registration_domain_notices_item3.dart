enum RegistrationDomainNoticesItem3 {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItem3(this.value);
  final String value;

  static RegistrationDomainNoticesItem3 fromValue(String value) {
    for (final item in RegistrationDomainNoticesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationDomainNoticesItem3 value: $value');
  }
}
